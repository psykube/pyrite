# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PodsMetricSource indicates how to scale on a metric describing each pod in the current scale target (for example, transactions-processed-per-second). The values will be averaged together before being compared to the target value.
  class Api::Autoscaling::V2beta1::PodsMetricSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # metricName is the name of the metric in question
    @[JSON::Field(key: "metricName")]
    @[YAML::Field(key: "metricName")]
    property metric_name : String

    # selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping When unset, just the metricName will be used to gather metrics.
    @[JSON::Field(key: "selector")]
    @[YAML::Field(key: "selector")]
    property selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # targetAverageValue is the target value of the average of the metric across all relevant pods (as a quantity)
    @[JSON::Field(key: "targetAverageValue")]
    @[YAML::Field(key: "targetAverageValue")]
    property target_average_value : Int32

    def initialize(*, @metric_name : String, @selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @target_average_value : Int32)
    end
  end
end
