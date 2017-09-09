# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ObjectMetricStatus indicates the current value of a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
  class Kubernetes::Apis::Autoscaling::V2alpha1::ObjectMetricStatus
    # currentValue is the current value of the metric (as a quantity).
    property current_value : Int32

    # metricName is the name of the metric in question.
    property metric_name : String

    # target is the described Kubernetes object.
    property target : Kubernetes::Apis::Autoscaling::V2alpha1::CrossVersionObjectReference

    YAML.mapping({
      current_value: {type: Int32, nilable: false, key: "currentValue"},
      metric_name:   {type: String, nilable: false, key: "metricName"},
      target:        {type: Kubernetes::Apis::Autoscaling::V2alpha1::CrossVersionObjectReference, nilable: false, key: "target"},
    }, true)

    JSON.mapping({
      current_value: {type: Int32, nilable: false, key: "currentValue"},
      metric_name:   {type: String, nilable: false, key: "metricName"},
      target:        {type: Kubernetes::Apis::Autoscaling::V2alpha1::CrossVersionObjectReference, nilable: false, key: "target"},
    }, true)

    def initialize(*, @current_value : Int32 | Nil = nil, @metric_name : String | Nil = nil, @target : Kubernetes::Apis::Autoscaling::V2alpha1::CrossVersionObjectReference | Nil = nil)
    end
  end
end
