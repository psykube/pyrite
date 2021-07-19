# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NetworkPolicy describes what network traffic is allowed for a set of Pods
  class Kubernetes::Apis::Networking::V1::NetworkPolicy < Kubernetes::Object
    @api_version = "networking/v1"
    @kind = "NetworkPolicy"

    def self.new(pull : ::JSON::PullParser)
      previous_def(pull).tap do |instance|
        unless instance.api_version == "networking/v1" && instance.kind == "NetworkPolicy"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      previous_def(ctx, node).tap do |instance|
        unless instance.api_version == "networking/v1" && instance.kind == "NetworkPolicy"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    # Specification of the desired behavior for this NetworkPolicy.
    @[::JSON::Field(key: "spec")]
    @[::YAML::Field(key: "spec")]
    property spec : Kubernetes::Apis::Networking::V1::NetworkPolicySpec | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Apis::Networking::V1::NetworkPolicySpec | Nil = nil)
    end
  end
end
