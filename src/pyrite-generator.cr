require "yaml"
require "http/client"
require "./swagger"

VERSION = "1.0.0"

class Generator
  ROOT_NAME    = "Pyrite"
  VERSIONS_DIR = "kube-versions"
  getter filename : String
  getter definitions : Hash(String, String)
  getter base_class : String
  getter base_dir : String
  getter schema : Swagger

  def self.generate(*args)
    new(*args).tap(&.generate)
  end

  def initialize(response : HTTP::Client::Response, fallback_version : String)
    @schema = Swagger.from_json(response.body)
    Swagger::Definition.new.tap do |list_def|
      list_def.description = "List is a generic list of resources"
      list_def.properties = @schema.definitions["io.k8s.kubernetes.pkg.api.v1.PodList"].properties.dup
      list_def.properties["items"] = Swagger::Definition::Property.new(
        description: "list of resources",
        type: "array",
        items: Swagger::Definition::Property.new(type: "resource")
      )
      @schema.definitions["io.k8s.kubernetes.pkg.api.v1.List"] = list_def
    end
    @schema.info.version = fallback_version if @schema.info.version == "unversioned"
    @base_class = ROOT_NAME
    @base_dir = File.join(".", VERSIONS_DIR, version, "src", base_class.downcase)
    @filename = File.join("src", ROOT_NAME.downcase + ".cr")
    @definitions = @schema.definitions.each_with_object({} of String => String) do |(name, definition), memo|
      parts = name.lchop("io.k8s.").sub(".pkg.", ".").split(".").map(&.gsub('-', '_').camelcase)
      memo[name] = parts.join("::")
    end
    @definitions["io.k8s.apimachinery.pkg.util.intstr.IntOrString"] = "Int32 | String"
    @definitions["io.k8s.apimachinery.pkg.api.resource.Quantity"] = "Int32"
    @definitions["io.k8s.apimachinery.pkg.apis.meta.v1.Time"] = "Time"
    @definitions["io.k8s.apimachinery.pkg.apis.meta.v1.Time"] = "Time"
  end

  def generate
    definitions = @definitions.reject do |_, klass|
      (["Int32", "Time", "String"] & klass.split("|").map(&.strip)).first?
    end.map do |key, value|
      Definition.generate(self, key)
    end
    FileUtils.mkdir_p(base_dir)
    puts "Writing: #{filename}"
    Dir.cd(File.join(File.join(".", VERSIONS_DIR, version))) do
      File.open(filename, "w+") do |file|
        file.puts "# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC", ""
        definitions.map(&.filename).each { |r| file.puts "require \"#{r.sub(base_dir, "./#{base_class.downcase}")}\"" }
        file.puts "require \"./#{base_class.downcase}/kubernetes\""
      end
      File.open(File.join("src", base_class.downcase, "kubernetes.cr"), "w+") do |file|
        file.puts "",
          "module #{base_class}::Kubernetes",
          "alias Resource =",
          definitions.select(&.is_resource?).reject(&.is_list?).map { |r| "#{r.resource_alias}::#{r.kind}" }.join(" |\n"),
          "",
          "  def self.from_yaml(*args, **params)",
          "    Resource.from_yaml(*args, **params)",
          "  end",
          "",
          "  def self.from_json(*args, **params)",
          "    Resource.from_json(*args, **params)",
          "  end",
          "end"
      end
      File.write("shard.yml", "name: #{base_class.downcase}\nversion: #{VERSION}")
    end
  end

  private def version
    @schema.info.version.downcase
  end
end

require "./generator/*"

major = 1
minor = 6
patch = 0
last_bump = nil

FileUtils.rm_rf File.join(".", Generator::VERSIONS_DIR)
versions = [] of Generator
while version = "v" + [major, minor, patch].map(&.to_s).join(".")
  puts "Generating #{version}"
  res = HTTP::Client.get("https://raw.githubusercontent.com/kubernetes/kubernetes/#{version}/api/openapi-spec/swagger.json")

  if res.status_code == 200
    versions << Generator.generate(res, version)
    patch += 1
    last_bump = "patch"
  else
    puts "failed to get #{version}"
    patch = 0
    case last_bump
    when "patch"
      minor += 1
      last_bump = "minor"
    when "minor"
      major += 1
      minor = 0
      last_bump = "major"
    when "major"
      break
    end
  end
end
