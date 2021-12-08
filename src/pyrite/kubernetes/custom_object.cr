require "./object"
require "./object_metadata"

module Pyrite::Kubernetes
  class CustomObject < ::Pyrite::Kubernetes::Resource
    include Pyrite::Kubernetes::ObjectMetadata

    @[YAML::Field(ignore: true)]
    @[JSON::Field(ignore: true)]
    property unmapped = Hash(String, YAML::Any | JSON::Any).new

    protected def on_unknown_yaml_attribute(ctx, key, key_node, value_node)
      raw_string = YAML.build do |builder|
        value_node.to_yaml(builder)
      end
      unmapped[key] = YAML.parse(raw_string)
    end

    protected def on_unknown_json_attribute(pull, key, key_location)
      json_unmapped[key] = begin
        JSON::Any.new(pull)
      rescue exc : ::JSON::ParseException
        raise ::JSON::SerializableError.new(exc.message, self.class.to_s, key, *key_location, exc)
      end
    end

    protected def on_to_yaml(yaml)
      unmapped.each do |key, value|
        key.to_yaml(yaml)
        value.to_yaml(yaml)
      end
    end

    protected def on_to_json(json)
      unmapped.each do |key, value|
        json.field(key) do
          value.to_json(json)
        end
      end
    end
  end
end
