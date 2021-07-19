# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # A list of ephemeral containers used with the Pod ephemeralcontainers subresource.
  class Api::Core::V1::EphemeralContainers < Kubernetes::Object
    @api_version = "v1"
    @kind = "EphemeralContainers"

    def self.new(pull : ::JSON::PullParser)
      previous_def(pull).tap do |instance|
        unless instance.api_version == "v1" && instance.kind == "EphemeralContainers"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      previous_def(ctx, node).tap do |instance|
        unless instance.api_version == "v1" && instance.kind == "EphemeralContainers"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    # A list of ephemeral containers associated with this pod. New ephemeral containers may be appended to this list, but existing ephemeral containers may not be removed or modified.
    @[::JSON::Field(key: "ephemeralContainers")]
    @[::YAML::Field(key: "ephemeralContainers")]
    property ephemeral_containers : Array(Api::Core::V1::EphemeralContainer)

    def initialize(*, @ephemeral_containers : Array, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil)
    end
  end
end
