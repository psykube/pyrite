require "file_utils"
require "../swagger"

class Generator::Definition
  URL_REGEX = /(?<url>((http[s]?):\/)?\/?([^:\/\s]+)((\/\w+)*\/)([\w\-\.]+[^#?\s]+)(.*)?(#[\w\-]+)?)/

  class FunctionArgument
    getter name : String
    getter type : String?
    getter ref : String? = nil
    getter required : Bool = false
    property default : String? = nil

    def initialize(name : String, prop : Swagger::Definition::Property, definition : Swagger::Definition)
      initialize name: name, required: definition.required.includes?(name), type: prop.type.to_s, ref: prop._ref
    end

    def initialize(param : Swagger::Path::Parameter)
      initialize name: param.name, required: param.required, type: param.type, ref: param.schema.try(&._ref)
    end

    def initialize(@name : String, @type : String?, @required : Bool = false, @default : String? = nil, @ref : String? = nil)
    end

    def first_value?
      required && !default
    end
  end

  RESOURCE_KEYS = %w(apiVersion kind)

  getter class_name : String
  getter schema : Swagger
  getter definitions : Hash(String, String)
  getter name : String
  getter file : IO::FileDescriptor
  getter filename : String
  getter definition : Swagger::Definition

  delegate required, properties, to: definition

  macro write(&block)
    file.print block.body + "\n"
  end

  def self.generate(*args)
    new(*args).generate
  end

  def initialize(@schema : Swagger, @definitions : Hash(String, String), @name : String)
    @class_name = definitions[name]
    @definition = schema.definitions[name]
    @filename = File.join(".", "src", @class_name.split("::").map(&.underscore).join("/")) + ".cr"
    FileUtils.mkdir_p(File.dirname(@filename))
    @file = File.open(@filename, "w+")
  end

  def generate
    STDOUT.puts "Writing: #{filename}"
    file.puts "# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC"
    file.puts ""
    load_requires
    open_class
    define_properties
    define_mappings
    define_initializer
    define_actions
    _end
    file.close
    self
  end

  private def definition_ref(ref : String?)
    return unless ref
    _, kind, name = ref.split("/")
    case kind
    when "definitions"
      @definitions[name]
    end
  end

  private def get_ref(ref : String?)
    return unless ref
    _, kind, name = ref.split("/")
    case kind
    when "definitions"
      @schema.definitions[name]
    when "path"
      @schema.paths[name]
    end
  end

  private def convert_type(arg : FunctionArgument)
    t = if ref = definition_ref(arg.ref)
          return ref
        else
          case arg.type.to_s
          when "object"
            "Hash(String, String)"
          when "boolean"
            "Bool"
          when "integer"
            "Int32"
          else
            arg.type.to_s.camelcase
          end
        end
    t += "?" unless arg.required
    t
  end

  private def convert_type(param : Swagger::Path::Parameter)
    t = if ref = definition_ref(param.schema.try(&._ref))
          return ref
        else
          case param.type.to_s
          when "object"
            "Hash(String, String)"
          when "boolean"
            "Bool"
          when "integer"
            "Int32"
          else
            param.type.to_s.camelcase
          end
        end
    t += "?" unless param.required
    t
  end

  private def convert_type(property : Swagger::Definition::Property, required : Bool = true)
    t = if ref = definition_ref(property._ref)
          return ref
        else
          case property.type.to_s
          when "object"
            "Hash(String, String)"
          when "array"
            "Array(#{convert_type(property.items.as(Swagger::Definition::Property))})"
          when "boolean"
            "Bool"
          when "integer"
            "Int32"
          else
            property.type.to_s.camelcase
          end
        end
    t += "?" unless required
    t
  end

  private def crystalize_name(name : String)
    name.underscore.lchop("_")
  end

  private def generate_description(description : String?)
    return unless description
    description.lines.each do |line|
      file.puts "# #{line.gsub(URL_REGEX, "[\\k<url>](\\k<url>)")}"
    end
  end

  private def resource_property?(name : String)
    RESOURCE_KEYS.includes? name
  end

  def is_resource?
    is_resource? @definition
  end

  private def is_resource?(definition : Swagger::Definition)
    RESOURCE_KEYS.all? { |p| definition.properties[p]? }
  end

  private def define_actions
    paths = @schema.paths.select do |path_name, path|
      next true if path.parameters.any? { |val| definition_ref(val.schema.try(&._ref)) == class_name }
      next true if path.actions.any?(&.parameters.any? { |val| definition_ref(val.schema.try(&._ref)) == class_name })
      next true if path.actions.any?(&.responses.values.any? { |val| definition_ref(val.schema.try(&._ref)) == class_name })
    end

    paths.each do |path_name, path|
      define_operations(path_name, path)
    end unless name.starts_with?("io.k8s.apimachinery")
  end

  private def params_to_refs(params = Array(Swagger::Path::Parameter))
    ([] of Swagger::Definition).tap do |refs|
      params.each do |param|
        ref = get_ref(param.schema.try(&._ref))
        refs << ref if ref.is_a? Swagger::Definition
      end
    end
  end

  private def define_function(name : String, arg_map : Hash(String, FunctionArgument), toplevel : Bool = false)
    file.print "def #{"self." if toplevel}#{name}("
    args = arg_map.values.select(&.first_value?) + arg_map.values.reject(&.first_value?)
    arg_list = args.map do |a|
      arg = crystalize_name(a.name)
      arg += " : #{convert_type(a)}"
      arg += " = #{a.default.inspect}" if !a.required || a.default
      arg
    end
    file.print arg_list.join(", ")
    file.puts ")"
    yield
    file.puts "end"
    file.puts
  end

  private def define_operations(path_name : String, path : Swagger::Path)
    path.action_map.each do |verb, action|
      next unless action
      generate_description(action.description)

      function_name = action.operationId
                            .sub("Namespaced", "")
                            .sub("List", "")
                            .sub("Collection", "")
                            .sub("Core" + @class_name.chomp("List").split("::").last(2).join, "")
                            .sub(@class_name.chomp("List").split("::").last(3).join, "")
                            .underscore

      params = (path.parameters + action.parameters).select(&.in.== "query")
      body = (path.parameters + action.parameters).select { |param| param.required && param.in == "body" }
      path_params = path_name.scan(/{([a-z]+)}/).map(&.[1]).map { |str| Swagger::Path::Parameter.new(str) }
      toplevel = params.map(&.name).includes?("labelSelector")
      toplevel ||= path_params.map(&.name).includes?("name") && verb == :get
      params += path_params if toplevel

      args = {} of String => FunctionArgument
      params_to_refs(body).reject(&.== @definition).each do |ref|
        ref.properties.reject { |name, _| is_resource?(ref) && resource_property?(name) }.each do |name, prop|
          args[name] = FunctionArgument.new(name, prop, ref)
        end
      end
      args["context"] = FunctionArgument.new("context", "string")
      params.each { |param| args[param.name] = FunctionArgument.new(param) }
      args["namespace"].default = "default" if args["namespace"]?
      args.delete("pretty")
      define_function(function_name, args, toplevel: toplevel) do
        puts "body = nil"
        puts "Pyrite.client.#{verb}(#{path_name}, Pyrite.headers, body)"
      end
    end
  end

  private def load_requires
    %w(yaml json).each do |req|
      file.puts "require #{req.inspect}"
    end
    file.puts
  end

  private def open_class
    # Class Description
    generate_description definition.description

    # Open the class
    file.puts "class #{class_name.lchop("::")}"
  end

  private def _end
    file.puts "end"
    file.puts
  end

  private def define_properties
    properties.each do |name, property|
      next if is_resource? && resource_property?(name)
      crystal_name = crystalize_name(name)
      prop_type = property.type
      prop_ref = property._ref
      prop_items = property.items

      next unless prop_type || prop_ref
      next if prop_type == "array" && !prop_items

      # Print property descriptions
      generate_description property.description

      file.puts "property #{crystal_name} : #{convert_type(property, required.includes?(name))}"
      file.puts ""
    end
  end

  private def define_initializer
    arg_map = properties.each_with_object({} of String => FunctionArgument) do |(name, prop), memo|
      memo["@" + name] = FunctionArgument.new("@" + name, prop, definition)
    end
    # arg_map["name"] = FunctionArgument.new("name", arg_map["@spec"].required) if is_resource? && arg_map["@spec"]
    define_function("initialize", arg_map) do
      # if arg_map["name"]
      #   "@spec = if name"
      # end
      if is_resource?
        file.puts "@api_version = #{self.name.split(".")[-1].inspect}"
        file.puts "@kind = #{self.name.split(".")[-2].inspect}"
      end
    end
  end

  private def define_mappings
    {"YAML", "JSON"}.each do |t|
      file.print "#{t}.mapping({ "
      first_arg = true
      if is_resource?
        file.puts
        file.puts "api_version: { type: String, default: #{name.split(".")[-1].inspect}, key: apiVersion, getter: false, setter: false },"
        file.print "kind: { type: String, default: #{name.split(".")[-2].inspect}, getter: false, setter: false }"
        first_arg = false
      end
      properties.each do |name, property|
        next if is_resource? && resource_property?(name)
        crystal_name = crystalize_name(name)
        file.puts "," unless first_arg
        file.print "#{crystal_name}: { type: #{convert_type(property)}, nilable: #{!required.includes?(name)}, key: #{name}, getter: false, setter: false }"
        first_arg = false
      end
      file.puts "}, true)"
      file.puts
    end unless properties.empty?
  end
end
