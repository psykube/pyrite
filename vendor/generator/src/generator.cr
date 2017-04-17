require "./swagger"

class Generator
  ROOT_NAME = "K8S"
  @definitions : Hash(String, String)

  def self.generate(file)
    new(file).generate
  end

  def initialize(file : String)
    @schema = Swagger.from_json File.read(file)
    @definitions = @schema.definitions.each_with_object({} of String => String) do |(name, definition), memo|
      parts = ["", ROOT_NAME, @schema.info.version.gsub(".", "_").upcase]
      parts += name.lchop("io.k8s.").sub(".pkg.", ".").split(".").map(&.camelcase)
      memo[name] = parts.join("::")
    end
  end

  def generate
    definitions = @definitions.keys.map do |name|
      Definition.generate(@schema, @definitions, name)
    end
    class_name = [ROOT_NAME, @schema.info.version.gsub(".", "_").upcase].join("::")
    dirname = File.join(".", "src", class_name.split("::").map(&.underscore).join("/"))
    filename = dirname + ".cr"
    puts "Writing: #{filename}"
    File.open(filename, "w+") do |file|
      file.puts "# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC"
      file.puts ""
      file.puts "# Kubernetes v#{@schema.info.version}"
      file.puts "class #{class_name}"
      file.puts "  def self.get_definition(name : String)"
      file.puts "    case name"
      @definitions.each do |name, class_name|
        file.puts "    when #{name.inspect}"
        file.puts "      " + class_name
      end
      file.puts "    else"
      file.puts "      raise \"Definition `\#{name}` not found\""
      file.puts "    end"
      file.puts "  end"
      file.puts "end"
      file.puts ""
      definitions.map(&.filename).each { |r| file.puts "require \"#{r.sub(dirname, "./#{File.basename(dirname)}")}\"" }
    end
  end
end

require "./generator/*"

Dir.glob(File.join __DIR__, "swaggers", "*.json").each do |f|
  Generator.generate(f)
end
