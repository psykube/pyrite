# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PodsMetricStatus indicates the current value of a metric describing each pod in the current scale target (for example, transactions-processed-per-second).
  class Kubernetes::Apis::Autoscaling::V2alpha1::PodsMetricStatus
    # currentAverageValue is the current value of the average of the metric across all relevant pods (as a quantity)
    property current_average_value : Int32

    # metricName is the name of the metric in question
    property metric_name : String

    YAML.mapping({
      current_average_value: {type: Int32, nilable: false, key: "currentAverageValue"},
      metric_name:           {type: String, nilable: false, key: "metricName"},
    }, true)

    JSON.mapping({
      current_average_value: {type: Int32, nilable: false, key: "currentAverageValue"},
      metric_name:           {type: String, nilable: false, key: "metricName"},
    }, true)

    def initialize(*, @current_average_value : Int32 | Nil = nil, @metric_name : String | Nil = nil)
    end
  end
end
