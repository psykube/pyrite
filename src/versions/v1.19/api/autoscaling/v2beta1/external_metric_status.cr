# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ExternalMetricStatus indicates the current value of a global metric not associated with any Kubernetes object.
  class Api::Autoscaling::V2beta1::ExternalMetricStatus
    # currentAverageValue is the current value of metric averaged over autoscaled pods.
    property current_average_value : Int32 | Nil

    # currentValue is the current value of the metric (as a quantity)
    property current_value : Int32

    # metricName is the name of a metric used for autoscaling in metric system.
    property metric_name : String

    # metricSelector is used to identify a specific time series within a given metric.
    property metric_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    ::YAML.mapping({
      current_average_value: {type: Int32, nilable: true, key: "currentAverageValue", getter: false, setter: false},
      current_value:         {type: Int32, nilable: false, key: "currentValue", getter: false, setter: false},
      metric_name:           {type: String, nilable: false, key: "metricName", getter: false, setter: false},
      metric_selector:       {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "metricSelector", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      current_average_value: {type: Int32, nilable: true, key: "currentAverageValue", getter: false, setter: false},
      current_value:         {type: Int32, nilable: false, key: "currentValue", getter: false, setter: false},
      metric_name:           {type: String, nilable: false, key: "metricName", getter: false, setter: false},
      metric_selector:       {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "metricSelector", getter: false, setter: false},
    }, true)

    def initialize(*, @current_value : Int32, @metric_name : String, @current_average_value : Int32 | Nil = nil, @metric_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil)
    end
  end
end
