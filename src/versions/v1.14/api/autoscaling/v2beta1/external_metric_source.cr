# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ExternalMetricSource indicates how to scale on a metric not associated with any Kubernetes object (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster). Exactly one "target" type should be set.
  class Api::Autoscaling::V2beta1::ExternalMetricSource
    # metricName is the name of the metric in question.
    property metric_name : String

    # metricSelector is used to identify a specific time series within a given metric.
    property metric_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # targetAverageValue is the target per-pod value of global metric (as a quantity). Mutually exclusive with TargetValue.
    property target_average_value : Int32 | Nil

    # targetValue is the target value of the metric (as a quantity). Mutually exclusive with TargetAverageValue.
    property target_value : Int32 | Nil

    ::YAML.mapping({
      metric_name:          {type: String, nilable: false, key: "metricName", getter: false, setter: false},
      metric_selector:      {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "metricSelector", getter: false, setter: false},
      target_average_value: {type: Int32, nilable: true, key: "targetAverageValue", getter: false, setter: false},
      target_value:         {type: Int32, nilable: true, key: "targetValue", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      metric_name:          {type: String, nilable: false, key: "metricName", getter: false, setter: false},
      metric_selector:      {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "metricSelector", getter: false, setter: false},
      target_average_value: {type: Int32, nilable: true, key: "targetAverageValue", getter: false, setter: false},
      target_value:         {type: Int32, nilable: true, key: "targetValue", getter: false, setter: false},
    }, true)

    def initialize(*, @metric_name : String, @metric_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @target_average_value : Int32 | Nil = nil, @target_value : Int32 | Nil = nil)
    end
  end
end
