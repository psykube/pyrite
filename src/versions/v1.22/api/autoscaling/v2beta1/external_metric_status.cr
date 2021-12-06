# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ExternalMetricStatus indicates the current value of a global metric not associated with any Kubernetes object.
  class Api::Autoscaling::V2beta1::ExternalMetricStatus < Kubernetes::Spec
    # currentAverageValue is the current value of metric averaged over autoscaled pods.
    @[::JSON::Field(key: "currentAverageValue")]
    @[::YAML::Field(key: "currentAverageValue")]
    property current_average_value : Int32 | Nil

    # currentValue is the current value of the metric (as a quantity)
    @[::JSON::Field(key: "currentValue")]
    @[::YAML::Field(key: "currentValue")]
    property current_value : Int32

    # metricName is the name of a metric used for autoscaling in metric system.
    @[::JSON::Field(key: "metricName")]
    @[::YAML::Field(key: "metricName")]
    property metric_name : String

    # metricSelector is used to identify a specific time series within a given metric.
    @[::JSON::Field(key: "metricSelector")]
    @[::YAML::Field(key: "metricSelector")]
    property metric_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    def initialize(*, @current_average_value : Int32 | Nil = nil, @current_value : Int32, @metric_name : String, @metric_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil)
    end
  end
end
