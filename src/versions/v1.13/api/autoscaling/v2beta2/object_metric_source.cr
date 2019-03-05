# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ObjectMetricSource indicates how to scale on a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
  class Api::Autoscaling::V2beta2::ObjectMetricSource
    property described_object : Api::Autoscaling::V2beta2::CrossVersionObjectReference

    # metric identifies the target metric by name and selector
    property metric : Api::Autoscaling::V2beta2::MetricIdentifier

    # target specifies the target value for the given metric
    property target : Api::Autoscaling::V2beta2::MetricTarget

    ::YAML.mapping({
      described_object: {type: Api::Autoscaling::V2beta2::CrossVersionObjectReference, nilable: false, key: "describedObject", getter: false, setter: false},
      metric:           {type: Api::Autoscaling::V2beta2::MetricIdentifier, nilable: false, key: "metric", getter: false, setter: false},
      target:           {type: Api::Autoscaling::V2beta2::MetricTarget, nilable: false, key: "target", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      described_object: {type: Api::Autoscaling::V2beta2::CrossVersionObjectReference, nilable: false, key: "describedObject", getter: false, setter: false},
      metric:           {type: Api::Autoscaling::V2beta2::MetricIdentifier, nilable: false, key: "metric", getter: false, setter: false},
      target:           {type: Api::Autoscaling::V2beta2::MetricTarget, nilable: false, key: "target", getter: false, setter: false},
    }, true)

    def initialize(*, @described_object : Api::Autoscaling::V2beta2::CrossVersionObjectReference, @metric : Api::Autoscaling::V2beta2::MetricIdentifier, @target : Api::Autoscaling::V2beta2::MetricTarget)
    end
  end
end
