# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PodsMetricStatus indicates the current value of a metric describing each pod in the current scale target (for example, transactions-processed-per-second).
  class Api::Autoscaling::V2beta2::PodsMetricStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # current contains the current value for the given metric
    @[JSON::Field(key: "current")]
    @[YAML::Field(key: "current")]
    property current : Api::Autoscaling::V2beta2::MetricValueStatus

    # metric identifies the target metric by name and selector
    @[JSON::Field(key: "metric")]
    @[YAML::Field(key: "metric")]
    property metric : Api::Autoscaling::V2beta2::MetricIdentifier

    def initialize(*, @current : Api::Autoscaling::V2beta2::MetricValueStatus, @metric : Api::Autoscaling::V2beta2::MetricIdentifier)
    end
  end
end
