# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ObjectMetricStatus indicates the current value of a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
  class Api::Autoscaling::V2beta1::ObjectMetricStatus < Kubernetes::Spec
    # averageValue is the current value of the average of the metric across all relevant pods (as a quantity)
    @[::JSON::Field(key: "averageValue")]
    @[::YAML::Field(key: "averageValue")]
    property average_value : Int32 | Nil

    # currentValue is the current value of the metric (as a quantity).
    @[::JSON::Field(key: "currentValue")]
    @[::YAML::Field(key: "currentValue")]
    property current_value : Int32

    # metricName is the name of the metric in question.
    @[::JSON::Field(key: "metricName")]
    @[::YAML::Field(key: "metricName")]
    property metric_name : String

    # selector is the string-encoded form of a standard kubernetes label selector for the given metric When set in the ObjectMetricSource, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics.
    @[::JSON::Field(key: "selector")]
    @[::YAML::Field(key: "selector")]
    property selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # target is the described Kubernetes object.
    @[::JSON::Field(key: "target")]
    @[::YAML::Field(key: "target")]
    property target : Api::Autoscaling::V2beta1::CrossVersionObjectReference

    def initialize(*, @average_value : Int32 | Nil = nil, @current_value : Int32, @metric_name : String, @selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @target : Api::Autoscaling::V2beta1::CrossVersionObjectReference)
    end
  end
end
