# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ObjectMetricSource indicates how to scale on a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
  class Api::Autoscaling::V2beta2::ObjectMetricSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "describedObject")]
    @[::YAML::Field(key: "describedObject")]
    property described_object : Api::Autoscaling::V2beta2::CrossVersionObjectReference

    # metric identifies the target metric by name and selector
    @[::JSON::Field(key: "metric")]
    @[::YAML::Field(key: "metric")]
    property metric : Api::Autoscaling::V2beta2::MetricIdentifier

    # target specifies the target value for the given metric
    @[::JSON::Field(key: "target")]
    @[::YAML::Field(key: "target")]
    property target : Api::Autoscaling::V2beta2::MetricTarget

    def initialize(*, @described_object : Api::Autoscaling::V2beta2::CrossVersionObjectReference, @metric : Api::Autoscaling::V2beta2::MetricIdentifier, @target : Api::Autoscaling::V2beta2::MetricTarget)
    end
  end
end
