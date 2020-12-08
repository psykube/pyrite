# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ObjectMetricStatus indicates the current value of a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
  class Api::Autoscaling::V2beta2::ObjectMetricStatus
    # current contains the current value for the given metric
    property current : Api::Autoscaling::V2beta2::MetricValueStatus

    property described_object : Api::Autoscaling::V2beta2::CrossVersionObjectReference

    # metric identifies the target metric by name and selector
    property metric : Api::Autoscaling::V2beta2::MetricIdentifier

    ::YAML.mapping({
      current:          {type: Api::Autoscaling::V2beta2::MetricValueStatus, nilable: false, key: "current", getter: false, setter: false},
      described_object: {type: Api::Autoscaling::V2beta2::CrossVersionObjectReference, nilable: false, key: "describedObject", getter: false, setter: false},
      metric:           {type: Api::Autoscaling::V2beta2::MetricIdentifier, nilable: false, key: "metric", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      current:          {type: Api::Autoscaling::V2beta2::MetricValueStatus, nilable: false, key: "current", getter: false, setter: false},
      described_object: {type: Api::Autoscaling::V2beta2::CrossVersionObjectReference, nilable: false, key: "describedObject", getter: false, setter: false},
      metric:           {type: Api::Autoscaling::V2beta2::MetricIdentifier, nilable: false, key: "metric", getter: false, setter: false},
    }, true)

    def initialize(*, @current : Api::Autoscaling::V2beta2::MetricValueStatus, @described_object : Api::Autoscaling::V2beta2::CrossVersionObjectReference, @metric : Api::Autoscaling::V2beta2::MetricIdentifier)
    end
  end
end
