require "file_utils"
require "./helpers"
require "./function_argument"

class Generator::Definition
  URL_REGEX = /(?<url>((http[s]?):\/)?\/?([^:\/\s]+)((\/\w+)*\/)([\w\-\.]+[^#?\s]+)(.*)?(#[\w\-]+)?)/
  include Helpers

  delegate schema, definitions, base, base_dir, base_class, to: @generator

  getter class_name : String
  getter name : String
  getter file : IO
  getter filename : String? = nil
  getter definition : Swagger::Definition

  delegate required, properties, to: definition

  macro write(&block)
    file.print block.body + "\n"
  end

  def self.generate(*args)
    new(*args).generate
  end

  def initialize(@generator : Generator, @name : String, io : Nil = nil)
    @class_name = generator.definitions[name]
    @definition = generator.schema.definitions[name]
    path = @class_name.split("::").map(&.underscore).join("/")
    filename = File.join(base_dir, path) + ".cr"
    FileUtils.mkdir_p(File.dirname(filename))
    @file = File.open(filename, "w+")
    @filename = filename
  end

  def initialize(@generator : Generator, @name : String, @file : IO)
    @class_name = generator.definitions[name]
    @definition = generator.schema.definitions[name]
  end

  def generate
    if filename
      Generator.log "Writing: #{filename}"
      file.puts "# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC"
      file.puts ""
    end
    load_requires
    file.puts "module #{base_class.lchop("::")}"
    define_class
    _end
    file.close if filename
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
    file.puts "class #{class_name.lchop("::")} < #{is_list? ? "Kubernetes::List(#{list_type})" : is_resource? ? "Kubernetes::Object" : "Kubernetes::Spec"}"
  end

  private def define_class
    open_class
    define_properties
    define_initializer
    # define_actions
    _end
  end

  private def get_ref(ref : String?)
    return unless ref
    _, kind, name = ref.split("/")
    case kind
    when "definitions"
      schema.definitions[name]
    when "path"
      schema.paths[name]
    end
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
    is_resource? && definition.properties.has_key?("items")
  end

  def list_type
    return unless is_list?
    convert_type(definition.properties["items"].items.as(Swagger::Definition::Property))
  end

  private def is_resource?(definition : Swagger::Definition)
    !name.includes?("apimachinery") &&
      %w(apiVersion kind metadata).all? { |p| definition.properties[p]? }
  end

  private def define_actions
    paths = schema.paths.select do |path_name, path|
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

  private def define_function(*, name : String, args : Hash(String, FunctionArgument) = {} of String => FunctionArgument, toplevel : Bool = false, named_args : Hash(String, FunctionArgument) = {} of String => FunctionArgument)
    file.print "def #{"self." if toplevel}#{name}"
    file.print '(' unless named_args.empty? && args.empty?
    arg_list = (args.values.select(&.first_value?) + args.values.reject(&.first_value?)).map do |a|
      arg = a.name
      arg += " : #{convert_type(a)}"
      arg += " = #{a.default.inspect}" if !a.required? || a.default
      arg
    end
    file.print arg_list.join(", ")
    file.print ", " unless args.empty?
    file.print "*, " unless named_args.empty?
    named_arg_list = (named_args.values).map do |a|
      arg = a.name
      arg += " : #{convert_type(a)}"
      arg += " = #{a.default.inspect}" if !a.required? || a.default
      arg
    end
    file.print named_arg_list.join(", ")
    file.print ")" unless named_args.empty? && args.empty?
    file.puts ""
    yield
    file.puts "end"
    file.puts
  end

  private def define_operations(path_name : String, path : Swagger::Path)
    path.action_map.each do |verb, action_mapping|
      action, has_body = action_mapping
      next unless action
      generate_description(action.description)

      function_name = action.operation_id
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
      toplevel ||= verb == :post
      params += path_params if toplevel

      args = {} of String => FunctionArgument
      named_args = {} of String => FunctionArgument
      params_to_refs(body).reject(&.== @definition).each do |ref|
        ref.properties.reject { |name, _| is_resource?(ref) && resource_property?(name) }.each do |name, prop|
          named_args[name] = FunctionArgument.new(name, prop, ref)
        end
      end
      named_args["context"] = FunctionArgument.new("context", "string")
      params.each { |param| named_args[param.name] = FunctionArgument.new(param) }
      path_name = path_name.gsub(/\/(?<param>\{name(space)?\})/, "/#\\k<param>")
      named_args["name"] = FunctionArgument.new("name", "string") if path_name.includes?("\#{name}")
      named_args["namespace"] = FunctionArgument.new("namespace", "string") if path_name.includes?("\#{namespace}")
      named_args["namespace"].default = "default" if named_args["namespace"]?
      args.delete("pretty")
      args["manifest"] = FunctionArgument.new("manifest", class_name) if toplevel
      define_function(name: function_name, args: args, named_args: named_args, toplevel: toplevel) do
        file.puts "#{base_class}.client.#{verb}(\"#{path_name}\", #{base_class}.headers#{has_body ? ", #{toplevel ? "manifest.to_json" : "to_json"}" : ""})"
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
    if is_resource? && !is_list?
      file.puts <<-crystal

        def self.new(pull : ::JSON::PullParser)
          previous_def(pull).tap do |instance|
            unless instance.api_version == #{api_version_name.inspect} && instance.kind == #{kind.inspect}
              raise ::JSON::ParseException.new("Couldn't parse \#{self} from \#{pull.read_raw}", *pull.location)
            end
          end
        end

        def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
          previous_def(ctx, node).tap do |instance|
            unless instance.api_version == #{api_version_name.inspect} && instance.kind == #{kind.inspect}
              raise ::YAML::ParseException.new("Couldn't parse \#{self}", *node.location)
            end
          end
        end

      crystal
    end
    properties.each do |name, property|
      next if is_resource? && resource_property?(name)
      next if is_resource? && name == "metadata"
      next if is_list? && name == "items"
      crystal_name = crystalize_name(name)
      prop_type = property.type
      prop_ref = property._ref
      prop_items = property.items

      next unless prop_type || prop_ref
      next if prop_type == "array" && !prop_items

      # Print property descriptions
      generate_description property.description

      file.puts "@[::JSON::Field(key: #{name.inspect})]"
      file.puts "@[::YAML::Field(key: #{name.inspect})]"
      file.puts "property #{crystal_name} : #{convert_type(property, required.includes?(name))}"
      file.puts ""
    end
  end

  private def define_initializer
    return if is_list?
    args = properties.each_with_object({} of String => FunctionArgument) do |(name, prop), memo|
      next if is_resource? && resource_property?(name)
      memo["@" + name] = FunctionArgument.new(name, prop, definition, ivar: true)
    end
    define_function(name: "initialize", named_args: args) { }
  end

  def api_version
    is_list? ? "v1" : name.sub(/^io\.k8s(\.[-a-z]+\.pkg)?\.apis?(\.core)?\./, "").split(".")[0..-2].join("/")
  end

  def api_version_name
    case api_version
    when .starts_with? "rbac/v1"
      api_version.sub(/^rbac\/v1/, "rbac.authorization.k8s.io/v1")
    else
      api_version
    end
  end

  private def api_module
    api_version.split("/").map(&.gsub('-', '_').camelcase).join("::")
  end

  def kind
    is_list? ? "List" : self.name.split(".")[-1]
  end
end
