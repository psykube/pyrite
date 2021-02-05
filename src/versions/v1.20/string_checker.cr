struct Pyrite::StringChecker
  class Error < Exception
  end

  def initialize(@match : String)
  end

  def from_json(pull : JSON::PullParser) : String
    check(pull.read_string)
  end

  def from_yaml(ctx : YAML::ParseContext, node : YAML::Nodes::Node) : String
    unless node.is_a?(YAML::Nodes::Scalar)
      node.raise "Expected scalar, not #{node.class}"
    end

    check(node.value)
  end

  private def check(string : String) : String
    if string == @match
      return string
    else
      raise Error.new("#{string} does not match #{@match}")
    end
  end

  private def check(match)
    raise Error.new("#{match} is not a string`")
  end
end
