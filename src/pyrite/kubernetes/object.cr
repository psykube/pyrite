require "./resource"
require "./object_metadata"

module Pyrite::Kubernetes
  class Object < Resource
    include ObjectMetadata

    macro finished
      def self.new(pull : JSON::PullParser)
        location = pull.location
        string = pull.read_raw
        {% for subtype in @type.subclasses %}
          begin
            return {{subtype}}.from_json(string)
          rescue JSON::ParseException
            # Ignore
          end
        {% end %}
        raise JSON::ParseException.new("Couldn't parse #{self} from #{string}", *location)
      end

      def self.new(ctx : YAML::ParseContext, node : YAML::Nodes::Node)
        {% for subtype in @type.subclasses %}
          begin
            return {{subtype}}.new(ctx, node)
          rescue YAML::ParseException
            # Ignore
          end
        {% end %}
        node.raise "Couldn't parse #{self}"
      end
    end
  end
end
