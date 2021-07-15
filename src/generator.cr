require "colorize"
require "http/client"
require "./swagger"
require "./generator"

STDOUT.sync = true
STDERR.sync = true

struct Range
  def next
    {{@type}}.new(self.end + 1, self.end + 1 + self.end - self.begin)
  end
end

class Generator
  def self.log(message, color = :dark_gray)
    STDERR.puts "#{message}".colorize(color)
  end

  class InvalidVersionError < Exception
  end

  ROOT_NAME    = "Pyrite"
  VERSIONS_DIR = "src/versions"
  getter filename : String
  getter definitions : Hash(String, String)
  getter base_class : String
  getter base_dir : String
  getter schema : Swagger

  def self.latest_patch_for(prefix, patch_range = 0..25, last_res = nil)
    Generator.log "locating latest patch for #{prefix}" unless last_res
    last_patch = patch_range.bsearch do |patch|
      res = fetch_swagger("#{prefix}.#{patch}")

      case res.status_code
      when 200
        last_res = res
        false
      else
        true
      end
    end

    if last_patch
      {last_res, last_patch - 1}
    else
      latest_patch_for(prefix, patch_range.next, last_res)
    end
  end

  def self.fetch_swagger(version)
    url = "https://raw.githubusercontent.com/kubernetes/kubernetes/#{version}/api/openapi-spec/swagger.json"
    HTTP::Client.get(url)
  end

  def self.generate_all(major = 1, minor = 6)
    FileUtils.rm_rf File.join(".", Generator::VERSIONS_DIR)
    FileUtils.rm_rf File.join(".", "docs")
    loop do
      begin
        generate("#{major}.#{minor}")
        minor += 1
      rescue error : InvalidVersionError
        break
      rescue error
        Generator.log("ERROR: #{error}", :red)
        break
      end
    end
  end

  def self.generate(version = "string", output = nil)
    last_res, patch = latest_patch_for("v#{version}")
    raise InvalidVersionError.new("invalid version: #{version}") unless last_res && patch
    version = "v#{version}.#{patch}"
    generate(last_res, version, output)
  end

  def self.generate(res, version, output)
    Generator.log "generating code for #{version}"
    new(res, version).tap(&.generate(output))
  end

  def initialize(response : HTTP::Client::Response, fallback_version : String)
    @schema = Swagger.from_json(response.body)
    Swagger::Definition.new.tap do |list_def|
      template = @schema.definitions["io.k8s.api.core.v1.PodList"]?
      defkey = "io.k8s.api.core.v1.List" if template
      template ||= @schema.definitions["io.k8s.kubernetes.pkg.api.v1.PodList"]
      defkey ||= "io.k8s.kubernetes.pkg.api.v1.List"
      list_def.description = "List is a generic list of resources"
      list_def.properties = template.properties.dup
      list_def.properties["items"] = Swagger::Definition::Property.new(
        description: "list of resources",
        type: "array",
        items: Swagger::Definition::Property.new(type: "resource")
      )
      @schema.definitions[defkey] = list_def
    end
    @schema.info.version = fallback_version if @schema.info.version == "unversioned"
    @base_class = ROOT_NAME
    @base_dir = File.join(".", VERSIONS_DIR, version)
    @filename = version + ".cr"
    @definitions = @schema.definitions.each_with_object({} of String => String) do |(name, definition), memo|
      next if definition._ref
      parts = name.lchop("io.k8s.").sub(".pkg.", ".").split(".").map(&.gsub('-', '_').camelcase)
      memo[name] = parts.join("::")
    end
    @definitions["io.k8s.apimachinery.pkg.util.intstr.IntOrString"] = "Int32 | String"
    @definitions["io.k8s.apimachinery.pkg.api.resource.Quantity"] = "Int32"
    @definitions["io.k8s.apimachinery.pkg.apis.meta.v1.Time"] = "Time"
    @definitions["io.k8s.apimachinery.pkg.apis.meta.v1.MicroTime"] = "Time"
  end

  def generate(output : Nil)
    definitions = generate_definitions
    FileUtils.mkdir_p(base_dir)
    Generator.log "Writing: #{filename}"
    Dir.cd(File.join(File.join(".", VERSIONS_DIR))) do
      File.open(filename, "w+") do |file|
        file.puts "# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC", ""
        file.puts "require \"./#{version}/kubernetes\""
        file.puts "require \"./#{version}/kubernetes/spec\""
        file.puts "require \"./#{version}/kubernetes/resource\""
        file.puts "require \"./#{version}/kubernetes/object\""
        file.puts "require \"./#{version}/kubernetes/list\""
        definitions.map(&.filename.not_nil!).each { |r| file.puts "require \"#{r.sub(base_dir, "./#{version}")}\"" }
      end

      FileUtils.mkdir_p(File.join(version, "kubernetes"))

      File.open(File.join(version, "kubernetes.cr"), "w+") do |file|
        file.puts base_module
      end

      File.open(File.join(version, "kubernetes/spec.cr"), "w+") do |file|
        file.puts spec_class
      end

      File.open(File.join(version, "kubernetes/resource.cr"), "w+") do |file|
        file.puts resource_class
      end

      File.open(File.join(version, "kubernetes/object.cr"), "w+") do |file|
        file.puts object_class
      end

      File.open(File.join(version, "kubernetes/list.cr"), "w+") do |file|
        file.puts list_class
      end
      system "crystal tool format #{version}"
    end
    system "crystal docs src/versions/#{version}.cr -o docs/versions/#{version}"
  end

  def generate(io : IO)
    Generator.log "generating builtins"
    io.puts base_module
    io.puts spec_class
    io.puts resource_class
    io.puts object_class
    io.puts list_class
    generate_definitions(io)
  end

  def generate_definitions(io : IO? = nil)
    @definitions.reject do |_, klass|
      (["Int32", "Time", "String"] & klass.split("|").map(&.strip)).first?
    end.map do |key, value|
      Definition.generate(self, key, io)
    end
  end

  def base_module
    <<-crystal
    require "json"
    require "yaml"

    module #{base_class}::Kubernetes
      VERSION = #{version.lchop("v").inspect}
      
      def self.from_yaml(*args, **params)
        Resource.from_yaml(*args, **params)
      end

      def self.from_json(*args, **params)
        Resource.from_json(*args, **params)
      end
    end
    crystal
    end

  def spec_class
    <<-crystal    
    module #{base_class}::Kubernetes
      abstract class #{base_class}::Kubernetes::Spec
        include ::JSON::Serializable
        include ::YAML::Serializable
      end
    end
    crystal
  end
  
  def resource_class
    <<-crystal
    module #{base_class}::Kubernetes
      abstract class Resource < Spec
        @[::JSON::Field(key: "apiVersion")]
        @[::YAML::Field(key: "apiVersion")]
        # The API and version we are accessing.
        getter api_version : String

        @[::JSON::Field(key: "kind")]
        @[::YAML::Field(key: "kind")]
        # The resource kind withing the given apiVersion.
        getter kind : String
      end
    end
    crystal
  end

  def object_class
    <<-crystal
    module #{base_class}::Kubernetes
      abstract class Object < Resource
        # Standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)
        @[::JSON::Field(key: "metadata")]
        @[::YAML::Field(key: "metadata")]
        property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil
      end
    end
    crystal
  end

  def list_class
    <<-crystal
    module #{base_class}::Kubernetes
      abstract class List(T) < Resource
        # Standard list metadata. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)
        @[::JSON::Field(key: "metadata")]
        @[::YAML::Field(key: "metadata")]
        property metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil

        @[::JSON::Field(key: "items")]
        @[::YAML::Field(key: "items")]
        # The API and version we are accessing.
        getter items : Array(T) = [] of T

        def initialize(*, @items : Array(T) = [] of T, @metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil = nil)
        end

        def self.new(pull : ::JSON::PullParser)
          previous_def(pull).tap do |instance|
            unless instance.api_version == "v1" && instance.kind == "List"
              raise ::JSON::ParseException.new("Couldn't parse \#{self} from \#{pull.read_raw}", *pull.location)
            end
          end
        end

        def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
          previous_def(ctx, node).tap do |instance|
            unless instance.api_version == "v1" && instance.kind == "List"
              raise ::YAML::ParseException.new("Couldn't parse \#{self}", *node.location)
            end
          end
        end
      end
    end
    crystal
  end

  private def version
    @schema.info.version.downcase.split('.').tap(&.pop).join('.')
  end
end

require "./generator/*"

# Run Program
if (version = ARGV[0]?)
  STDERR.puts "generate #{version}"
  Generator.generate(version, STDOUT)
else
  Generator.generate_all()
end
