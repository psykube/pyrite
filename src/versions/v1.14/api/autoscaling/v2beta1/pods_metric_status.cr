# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PodsMetricStatus indicates the current value of a metric describing each pod in the current scale target (for example, transactions-processed-per-second).
  class Api::Autoscaling::V2beta1::PodsMetricStatus
    # currentAverageValue is the current value of the average of the metric across all relevant pods (as a quantity)
    property current_average_value : Int32

    # metricName is the name of the metric in question
    property metric_name : String

    # selector is the string-encoded form of a standard kubernetes label selector for the given metric When set in the PodsMetricSource, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics.
    property selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    ::YAML.mapping({
      current_average_value: {type: Int32, nilable: false, key: "currentAverageValue", getter: false, setter: false},
      metric_name:           {type: String, nilable: false, key: "metricName", getter: false, setter: false},
      selector:              {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "selector", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      current_average_value: {type: Int32, nilable: false, key: "currentAverageValue", getter: false, setter: false},
      metric_name:           {type: String, nilable: false, key: "metricName", getter: false, setter: false},
      selector:              {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "selector", getter: false, setter: false},
    }, true)

    def initialize(*, @current_average_value : Int32, @metric_name : String, @selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil)
    end
  end
end
