# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ObjectMetricStatus indicates the current value of a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
  class Api::Autoscaling::V2beta2::ObjectMetricStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # current contains the current value for the given metric
    @[JSON::Field(key: "current")]
    @[YAML::Field(key: "current")]
    property current : Api::Autoscaling::V2beta2::MetricValueStatus

    @[JSON::Field(key: "describedObject")]
    @[YAML::Field(key: "describedObject")]
    property described_object : Api::Autoscaling::V2beta2::CrossVersionObjectReference

    # metric identifies the target metric by name and selector
    @[JSON::Field(key: "metric")]
    @[YAML::Field(key: "metric")]
    property metric : Api::Autoscaling::V2beta2::MetricIdentifier

    def initialize(*, @current : Api::Autoscaling::V2beta2::MetricValueStatus, @described_object : Api::Autoscaling::V2beta2::CrossVersionObjectReference, @metric : Api::Autoscaling::V2beta2::MetricIdentifier)
    end
  end
end
