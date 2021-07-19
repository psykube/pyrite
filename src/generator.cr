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

  VERSIONS_DIR = "src/versions"
  getter filename : String
  getter definitions : Hash(String, String)
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

  def self.generate_all(major = 1, minor = 11)
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
        file.puts "require \"../pyrite/kubernetes/*\""
        definitions.map(&.filename.not_nil!).each { |r| file.puts "require \"#{r.sub(base_dir, "./#{version}")}\"" }
      end

      FileUtils.mkdir_p(File.join(version, "kubernetes"))

      File.open(File.join(version, "kubernetes.cr"), "w+") do |file|
        file.puts base_module
      end

      system "crystal tool format #{version}"
    end
    system "crystal docs src/versions/#{version}.cr -o docs/versions/#{version}"
  end

  def generate(io : IO)
    Generator.log "generating builtins"
    io.puts base_module
    generate_definitions(io)
  end

  def generate_definitions(io : IO? = nil)
    @definitions.reject do |_, klass|
      (["Int32", "Time", "String"] & klass.split("|").map(&.strip)).first?
    end.map do |key, _|
      Definition.generate(self, key, io)
    end
  end

  def base_module
    <<-crystal
    module Pyrite::Kubernetes
      VERSION = #{version.lchop("v").inspect}
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
  Generator.generate_all
end
