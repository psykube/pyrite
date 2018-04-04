class Generator
  ROOT_NAME    = "Pyrite"
  VERSIONS_DIR = "src/versions"
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

  def generate
    definitions = @definitions.reject do |_, klass|
      (["Int32", "Time", "String"] & klass.split("|").map(&.strip)).first?
    end.map do |key, value|
      Definition.generate(self, key)
    end
    FileUtils.mkdir_p(base_dir)
    puts "Writing: #{filename}"
    Dir.cd(File.join(File.join(".", VERSIONS_DIR))) do
      File.open(filename, "w+") do |file|
        file.puts "# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC", ""
        definitions.map(&.filename).each { |r| file.puts "require \"#{r.sub(base_dir, "./#{version}")}\"" }
        file.puts "require \"./#{version}/kubernetes\""
      end
      File.open(File.join(version, "kubernetes.cr"), "w+") do |file|
        file.puts "",
          "module #{base_class}::Kubernetes",
          "VERSION = #{version.lchop("v").inspect}",
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
      system "crystal tool format #{version}"
    end
  end

  private def version
    @schema.info.version.downcase.split('.').tap(&.pop).join('.')
  end
end

require "./generator/*"
