# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ObjectMetricStatus indicates the current value of a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
  class Api::Autoscaling::V2beta1::ObjectMetricStatus
    # averageValue is the current value of the average of the metric across all relevant pods (as a quantity)
    property average_value : Int32 | Nil

    # currentValue is the current value of the metric (as a quantity).
    property current_value : Int32

    # metricName is the name of the metric in question.
    property metric_name : String

    # selector is the string-encoded form of a standard kubernetes label selector for the given metric When set in the ObjectMetricSource, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics.
    property selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # target is the described Kubernetes object.
    property target : Api::Autoscaling::V2beta1::CrossVersionObjectReference

    ::YAML.mapping({
      average_value: {type: Int32, nilable: true, key: "averageValue", getter: false, setter: false},
      current_value: {type: Int32, nilable: false, key: "currentValue", getter: false, setter: false},
      metric_name:   {type: String, nilable: false, key: "metricName", getter: false, setter: false},
      selector:      {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "selector", getter: false, setter: false},
      target:        {type: Api::Autoscaling::V2beta1::CrossVersionObjectReference, nilable: false, key: "target", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      average_value: {type: Int32, nilable: true, key: "averageValue", getter: false, setter: false},
      current_value: {type: Int32, nilable: false, key: "currentValue", getter: false, setter: false},
      metric_name:   {type: String, nilable: false, key: "metricName", getter: false, setter: false},
      selector:      {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "selector", getter: false, setter: false},
      target:        {type: Api::Autoscaling::V2beta1::CrossVersionObjectReference, nilable: false, key: "target", getter: false, setter: false},
    }, true)

    def initialize(*, @current_value : Int32, @metric_name : String, @target : Api::Autoscaling::V2beta1::CrossVersionObjectReference, @average_value : Int32 | Nil = nil, @selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil)
    end
  end
end
