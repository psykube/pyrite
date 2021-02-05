# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ExternalMetricStatus indicates the current value of a global metric not associated with any Kubernetes object.
  class Api::Autoscaling::V2beta2::ExternalMetricStatus
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
