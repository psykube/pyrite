require "file_utils"
require "../swagger"

class Generator::Definition
  RESOURCE_KEYS = %w(apiVersion kind)

  getter class_name : String
  getter schema : Swagger
  getter definitions : Hash(String, String)
  getter name : String
  getter file : IO::FileDescriptor
  getter filename : String
  getter definition : Swagger::Definition

  delegate required, properties, to: definition

  delegate puts, print, to: file

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
    load_requires
    open_class
    define_properties
    define_mappings
    define_initializer
    define_actions
    _end
    file.close
    return filename
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
    STDOUT.puts ref
    return unless ref
    _, kind, name = ref.split("/")
    case kind
    when "definitions"
      @schema.definitions[name]
    when "path"
      @schema.paths[name]
    end
  end

  private def convert_type(param : Swagger::Path::Parameter, required : Bool = true)
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
    t += "?" unless required
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
    description.split(". ").join(".").lines.each do |line|
      file.puts "# #{line}"
    end
  end

  private def resource_property?(name : String)
    RESOURCE_KEYS.includes? name
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
      file << define_action(path_name, path, path.get, "get", true) do
        file.puts "Kubernetes.client.get"
      end

      file << define_action(path_name, path, path.post, "create", true) do
      end
    end unless name.starts_with?("io.k8s.apimachinery")
  end

  private def define_action(path_name : String, path : Swagger::Path, action : Swagger::Path::Action?, name : String, toplevel : Bool = false, &block)
    if action
      generate_description(action.description)
      params = (path.parameters + action.parameters).select(&.in.== "query")
      req_body_params = (path.parameters + action.parameters).select { |param| param.required && param.in == "body" }
      path_params = path_name.scan(/{([a-z]+)}/).map(&.[1]).map { |str| Swagger::Path::Parameter.new(str) }
      params = path_params if toplevel

      # Define function
      print "def #{"self." if toplevel}#{name}("
      first_arg = true

      req_body_params.each do |param|
        if (ref = get_ref(param.schema.try(&._ref))) && ref.is_a?(Swagger::Definition)
          required = ref.required
          ref.properties.select { |name, _| required.includes?(name) }.each do |name, property|
            next if params.map(&.name).includes? name
            next if is_resource?(ref) && resource_property?(name)
            crystal_name = crystalize_name(name)
            print ", " unless first_arg
            print "#{crystal_name}"
            first_arg = false
          end
        end
      end

      # Add the non namespace params
      params.reject(&.name.== "namespace").each do |param|
        print ", " unless first_arg
        print "#{crystalize_name(param.name)} : #{convert_type(param, param.required)}"
        first_arg = false
      end

      # Add the non-required body params
      req_body_params.each do |param|
        if (ref = get_ref(param.schema.try(&._ref))) && ref.is_a?(Swagger::Definition)
          required = ref.required
          ref.properties.reject { |name, _| required.includes?(name) }.each do |name, property|
            next if params.map(&.name).includes? name
            next if is_resource?(ref) && resource_property?(name)
            crystal_name = crystalize_name(name)
            print ", " unless first_arg
            print "#{crystal_name} = nil"
            first_arg = false
          end
        end
      end

      # Add the namespace param
      params.select(&.name.== "namespace").each do |param|
        print ", " unless first_arg
        print "#{crystalize_name(param.name)} : #{convert_type(param, param.required)}"
        print " = \"default\""
        first_arg = false
      end
      puts ")"

      # Define the body
      block.call

      # Close the function
      _end
    end
  end

  private def load_requires
    %w(yaml json).each do |file|
      puts "require #{file.inspect}"
    end
    puts
  end

  private def open_class
    # Class Description
    generate_description definition.description

    # Open the class
    puts "class #{class_name.lchop("::")}"
  end

  private def _end
    puts "end"
    puts
  end

  private def define_properties
    properties.each do |name, property|
      next if is_resource?(definition) && resource_property?(name)
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
    print "def initialize("
    first_arg = true
    properties.select { |name, _| required.includes?(name) }.each_with_index do |(name, property), index|
      next if is_resource?(definition) && resource_property?(name)
      crystal_name = crystalize_name(name)
      print "#{"," unless first_arg} @#{crystal_name}"
      first_arg = false
    end

    properties.reject { |name, _| required.includes?(name) }.each_with_index do |(name, property), index|
      next if is_resource?(definition) && resource_property?(name)
      crystal_name = crystalize_name(name)
      print "#{"," unless first_arg} @#{crystal_name} = nil"
      first_arg = false
    end
    puts ")"
    if is_resource?(definition)
      puts "@api_version = #{self.name.split(".")[-1].inspect}"
      puts "@kind = #{self.name.split(".")[-2].inspect}"
    end
    _end
  end

  private def define_mappings
    {"YAML", "JSON"}.each do |t|
      print "#{t}.mapping({ "
      first_arg = true
      if is_resource?(definition)
        puts
        puts "api_version: { type: String, default: #{name.split(".")[-1].inspect}, key: apiVersion, getter: false, setter: false },"
        print "kind: { type: String, default: #{name.split(".")[-2].inspect}, getter: false, setter: false }"
        first_arg = false
      end
      properties.each do |name, property|
        next if is_resource?(definition) && resource_property?(name)
        crystal_name = crystalize_name(name)
        puts "," unless first_arg
        print "#{crystal_name}: { type: #{convert_type(property)}, nilable: #{!required.includes?(name)}, key: #{name}, getter: false, setter: false }"
        first_arg = false
      end
      file.puts "}, true)"
      puts
    end unless properties.empty?
  end
end
