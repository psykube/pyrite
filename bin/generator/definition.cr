require "file_utils"

class Generator::Definition
  URL_REGEX = /(?<url>((http[s]?):\/)?\/?([^:\/\s]+)((\/\w+)*\/)([\w\-\.]+[^#?\s]+)(.*)?(#[\w\-]+)?)/

  class FunctionArgument
    getter name : String
    getter type : String?
    getter ref : String? = nil
    getter? required : Bool = false
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
      required? && !default
    end
  end

  delegate schema, definitions, base, base_dir, base_class, to: @generator

  getter class_name : String
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

  def initialize(@generator : Generator, @name : String)
    @class_name = generator.definitions[name]
    @definition = generator.schema.definitions[name]
    path = @class_name.split("::").map(&.underscore).join("/")
    @filename = File.join(base_dir, path) + ".cr"
    FileUtils.mkdir_p(File.dirname(@filename))
    @file = File.open(@filename, "w+")
  end

  def generate
    STDOUT.puts "Writing: #{filename}"
    file.puts "# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC"
    file.puts ""
    load_requires
    file.puts "module #{base_class.lchop("::")}"
    define_class
    define_alias if !is_list? && is_resource?
    _end
    file.close
    self
  end

  private def definition_ref(ref : String?)
    return unless ref
    _, kind, name = ref.split("/")
    case kind
    when "definitions"
      definitions[name]
    end
  end

  private def open_class
    # Class Description
    generate_description definition.description

    # Open the class
    file.puts "class #{class_name.lchop("::")}"
  end

  private def define_class
    open_class
    define_properties
    define_mappings
    define_initializer
    # define_actions
    _end
  end

  def resource_alias
    "Resources::#{api_module}"
  end

  private def define_alias
    file.puts "module #{resource_alias}"
    file.puts "alias #{kind} = #{class_name.lchop("::")}"
    _end
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

  private def convert_type(kind : String, required = false)
    t = case kind
        when "object"
          "Hash(String, String)"
        when "boolean"
          "Bool"
        when "integer"
          "Int32"
        when "resource"
          "Kubernetes::Resource"
        else
          kind.to_s.camelcase
        end
    t += " | Nil" unless required
    t
  end

  private def convert_type(arg : FunctionArgument)
    t = definition_ref(arg.ref) ||
        convert_type(arg.type.to_s, true)
    t += " | Nil" unless arg.required?
    t
  end

  private def convert_type(param : Swagger::Path::Parameter)
    t = definition_ref(param.schema.try(&._ref)) ||
        convert_type(param.type.to_s, true)
    t += " | Nil" unless param.required
    t
  end

  private def convert_type(property : Swagger::Definition::Property, required : Bool = true)
    t = if ref = definition_ref(property._ref)
          ref
        elsif property.type.to_s == "array"
          "Array(#{convert_type(property.items.as(Swagger::Definition::Property))})"
        else
          convert_type(property.type.to_s, true)
        end
    t += " | Nil" unless required
    t
  end

  private def crystalize_name(name : String)
    name.gsub(/[A-Z]{2,3}/, &.capitalize).underscore.lchop("_").lchop("$")
  end

  private def generate_description(description : String?)
    return unless description
    description.lines.each do |line|
      file.puts "# #{line.gsub(URL_REGEX, "[\\k<url>](\\k<url>)")}"
    end
  end

  private def resource_property?(name : String)
    %w(apiVersion kind).includes? name
  end

  def is_resource?
    is_resource?(@definition)
  end

  def is_list?
    name.ends_with? "List"
  end

  private def is_resource?(definition : Swagger::Definition)
    !name.includes?("apimachinery") &&
      %w(apiVersion kind metadata).all? { |p| definition.properties[p]? }
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

  private def define_function(*, name : String, args : Hash(String, FunctionArgument), toplevel : Bool = false, named_args : Bool = false)
    file.print "def #{"self." if toplevel}#{name}("
    file.print "*, " if named_args && !args.empty?
    arg_list = args.values.select(&.first_value?) + args.values.reject(&.first_value?).map do |a|
      arg = crystalize_name(a.name)
      arg += " : #{convert_type(a)}"
      arg += " = #{a.default.inspect}" if !a.required? || a.default
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
      define_function(name: function_name, args: args, toplevel: toplevel) do
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

  private def _end
    file.puts "end"
    file.puts
  end

  private def define_properties
    if is_resource?
      file.puts "getter api_version : String = #{api_version.inspect}"
      file.puts "getter kind : String = #{kind.inspect}"
    end
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
    args = properties.each_with_object({} of String => FunctionArgument) do |(name, prop), memo|
      next if is_resource? && resource_property?(name)
      memo["@" + name] = FunctionArgument.new("@" + name, prop, definition)
    end
    # arg_map["name"] = FunctionArgument.new("name", arg_map["@spec"].required) if is_resource? && arg_map["@spec"]

    define_function(name: "initialize", args: args, named_args: true) do
      # if arg_map["name"]
      #   "@spec = if name"
      # end
    end
  end

  def api_version
    name.sub(/^io\.k8s\.([-a-z]+\.)+pkg\.apis?\./, "").split(".")[0..-2].join("/")
  end

  private def api_module
    api_version.split("/").map(&.gsub('-', '_').camelcase).join("::")
  end

  def kind
    is_list? ? "List" : self.name.split(".")[-1]
  end

  private def define_mappings
    {"YAML", "JSON"}.each do |t|
      file.puts "#{t}.mapping({ "
      first_arg = true
      if is_resource?
        file.puts %(api_version: { type: String, default: #{api_version.inspect}, key: "apiVersion", setter: false },)
        file.print %(kind: { type: String, default: #{kind.inspect}, key: "kind", setter: false })
        first_arg = false
      end
      properties.each do |name, property|
        next if is_resource? && resource_property?(name)
        crystal_name = crystalize_name(name)
        file.puts "," unless first_arg
        file.print "#{crystal_name}: { type: #{convert_type(property)}, nilable: #{!required.includes?(name)}, key: #{name.inspect}, getter: false, setter: false }"
        first_arg = false
      end
      file.puts "", "}, true)"
      file.puts
    end unless properties.empty?
  end
end
