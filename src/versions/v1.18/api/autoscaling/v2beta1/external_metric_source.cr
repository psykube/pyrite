# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ExternalMetricSource indicates how to scale on a metric not associated with any Kubernetes object (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster). Exactly one "target" type should be set.
  class Api::Autoscaling::V2beta1::ExternalMetricSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # metricName is the name of the metric in question.
    @[::JSON::Field(key: "metricName")]
    @[::YAML::Field(key: "metricName")]
    property metric_name : String

    # metricSelector is used to identify a specific time series within a given metric.
    @[::JSON::Field(key: "metricSelector")]
    @[::YAML::Field(key: "metricSelector")]
    property metric_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # targetAverageValue is the target per-pod value of global metric (as a quantity). Mutually exclusive with TargetValue.
    @[::JSON::Field(key: "targetAverageValue")]
    @[::YAML::Field(key: "targetAverageValue")]
    property target_average_value : Int32 | Nil

    # targetValue is the target value of the metric (as a quantity). Mutually exclusive with TargetAverageValue.
    @[::JSON::Field(key: "targetValue")]
    @[::YAML::Field(key: "targetValue")]
    property target_value : Int32 | Nil

    def initialize(*, @metric_name : String, @metric_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @target_average_value : Int32 | Nil = nil, @target_value : Int32 | Nil = nil)
    end
  end
end
