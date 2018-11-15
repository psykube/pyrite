# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ObjectMetricStatus indicates the current value of a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
  class Api::Autoscaling::V2beta1::ObjectMetricStatus
    # currentValue is the current value of the metric (as a quantity).
    property current_value : Int32

    # metricName is the name of the metric in question.
    property metric_name : String

    # target is the described Kubernetes object.
    property target : Api::Autoscaling::V2beta1::CrossVersionObjectReference

    ::YAML.mapping({
      current_value: {type: Int32, nilable: false, key: "currentValue", getter: false, setter: false},
      metric_name:   {type: String, nilable: false, key: "metricName", getter: false, setter: false},
      target:        {type: Api::Autoscaling::V2beta1::CrossVersionObjectReference, nilable: false, key: "target", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      current_value: {type: Int32, nilable: false, key: "currentValue", getter: false, setter: false},
      metric_name:   {type: String, nilable: false, key: "metricName", getter: false, setter: false},
      target:        {type: Api::Autoscaling::V2beta1::CrossVersionObjectReference, nilable: false, key: "target", getter: false, setter: false},
    }, true)

    def initialize(*, @current_value : Int32, @metric_name : String, @target : Api::Autoscaling::V2beta1::CrossVersionObjectReference)
    end
  end
end
