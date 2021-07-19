# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PodDisruptionBudget is an object to define the max disruption that can be caused to a collection of pods
  class Api::Policy::V1::PodDisruptionBudget < Kubernetes::Object
    @api_version = "policy/v1"
    @kind = "PodDisruptionBudget"

    def self.new(pull : ::JSON::PullParser)
      previous_def(pull).tap do |instance|
        unless instance.api_version == "policy/v1" && instance.kind == "PodDisruptionBudget"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      previous_def(ctx, node).tap do |instance|
        unless instance.api_version == "policy/v1" && instance.kind == "PodDisruptionBudget"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    # Specification of the desired behavior of the PodDisruptionBudget.
    @[::JSON::Field(key: "spec")]
    @[::YAML::Field(key: "spec")]
    property spec : Api::Policy::V1::PodDisruptionBudgetSpec | Nil

    # Most recently observed status of the PodDisruptionBudget.
    @[::JSON::Field(key: "status")]
    @[::YAML::Field(key: "status")]
    property status : Api::Policy::V1::PodDisruptionBudgetStatus | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Policy::V1::PodDisruptionBudgetSpec | Nil = nil, @status : Api::Policy::V1::PodDisruptionBudgetStatus | Nil = nil)
    end
  end
end
