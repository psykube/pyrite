# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PodsMetricSource indicates how to scale on a metric describing each pod in the current scale target (for example, transactions-processed-per-second). The values will be averaged together before being compared to the target value.
  class Api::Autoscaling::V2beta2::PodsMetricSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # metric identifies the target metric by name and selector
    @[JSON::Field(key: "metric")]
    @[YAML::Field(key: "metric")]
    property metric : Api::Autoscaling::V2beta2::MetricIdentifier

    # target specifies the target value for the given metric
    @[JSON::Field(key: "target")]
    @[YAML::Field(key: "target")]
    property target : Api::Autoscaling::V2beta2::MetricTarget

    def initialize(*, @metric : Api::Autoscaling::V2beta2::MetricIdentifier, @target : Api::Autoscaling::V2beta2::MetricTarget)
    end
  end
end
