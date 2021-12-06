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
    end
  end
end
