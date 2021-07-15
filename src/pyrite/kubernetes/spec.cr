require "json"
require "yaml"

module Pyrite::Kubernetes
  abstract class Spec
    include ::JSON::Serializable
    include ::YAML::Serializable

    macro def_parser
      macro finished
        \{% if @type.abstract? %}
          def self.new(pull : JSON::PullParser)
            location = pull.location

              string = pull.read_raw
              \{% for subtype in @type.subclasses %}
                begin
                  return \{{subtype}}.from_json(string)
                rescue JSON::ParseException
                  # Ignore
                end
              \{% end %}
              raise JSON::ParseException.new("Couldn't parse #{self} from #{string}", *location)
          end
        \{% end %}
      end
    end

    macro inherited
      def_parser
    end

    def_parser
  end
end
