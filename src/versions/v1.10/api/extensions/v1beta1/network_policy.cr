# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # DEPRECATED 1.9 - This group version of NetworkPolicy is deprecated by [networking/v1/NetworkPolicy. NetworkPolicy describes what network traffic is allowed for a set of Pods](networking/v1/NetworkPolicy. NetworkPolicy describes what network traffic is allowed for a set of Pods)
  class Api::Extensions::V1beta1::NetworkPolicy < Kubernetes::Object
    @api_version = "extensions/v1beta1"
    @kind = "NetworkPolicy"

    def self.new(pull : ::JSON::PullParser)
      super(pull).tap do |instance|
        unless instance.api_version == "extensions/v1beta1" && instance.kind == "NetworkPolicy"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      super(ctx, node).tap do |instance|
        unless instance.api_version == "extensions/v1beta1" && instance.kind == "NetworkPolicy"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    # Specification of the desired behavior for this NetworkPolicy.
    @[::JSON::Field(key: "spec")]
    @[::YAML::Field(key: "spec")]
    property spec : Api::Extensions::V1beta1::NetworkPolicySpec | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Extensions::V1beta1::NetworkPolicySpec | Nil = nil)
    end
  end
end
