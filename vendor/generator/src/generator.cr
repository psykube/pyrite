require "http/client"
require "./swagger"

class Generator
  ROOT_NAME = "Pyrite"
  getter definitions : Hash(String, String)
  getter base_class : String
  getter base_dir : String
  getter schema : Swagger

  def self.generate(*args)
    new(*args).generate
  end

  def initialize(response : HTTP::Client::Response, fallback_version : String)
    @schema = Swagger.from_json(response.body)
    @schema.info.version = fallback_version if @schema.info.version == "unversioned"
    @base_class = ["", ROOT_NAME, @schema.info.version.gsub(".", "_").upcase].join("::")
    @base_dir = File.join(".", "src", base_class.split("::").map(&.underscore).join("/"))
    @definitions = @schema.definitions.each_with_object({} of String => String) do |(name, definition), memo|
      parts = name.lchop("io.k8s.").sub(".pkg.", ".").split(".").map(&.camelcase)
      memo[name] = parts.join("::")
    end
  end

  def generate
    definitions = @definitions.keys.map do |name|
      Definition.generate(self, name)
    end
    filename = base_dir + ".cr"
    FileUtils.mkdir_p(base_dir)
    puts "Writing: #{filename}"
    File.open(filename, "w+") do |file|
      file.puts "# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC"
      file.puts ""
      file.puts "# Kubernetes v#{@schema.info.version}"
      file.puts "module #{base_class}"
      file.puts "  module Resource"
      file.puts "    abstract def api_version"
      file.puts "    abstract def kind"
      file.puts "  end"
      file.puts "end"
      file.puts ""
      definitions.map(&.filename).each { |r| file.puts "require \"#{r.sub(base_dir, "./#{File.basename(base_dir)}")}\"" }
    end
  end
end

require "./generator/*"

major = 1
minor = 5
patch = 0
last_bump = nil

while version = "v" + [major, minor, patch].map(&.to_s).join(".")
  puts "Generating #{version}"
  res = HTTP::Client.get("https://raw.githubusercontent.com/kubernetes/kubernetes/#{version}/api/openapi-spec/swagger.json")

  if res.status_code == 200
    Generator.generate(res, version)
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
