# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ObjectMetricStatus indicates the current value of a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
  class Kubernetes::Apis::Autoscaling::V2alpha1::ObjectMetricStatus < Kubernetes::Spec
    # currentValue is the current value of the metric (as a quantity).
    @[::JSON::Field(key: "currentValue")]
    @[::YAML::Field(key: "currentValue")]
    property current_value : Int32

    # metricName is the name of the metric in question.
    @[::JSON::Field(key: "metricName")]
    @[::YAML::Field(key: "metricName")]
    property metric_name : String

    # target is the described Kubernetes object.
    @[::JSON::Field(key: "target")]
    @[::YAML::Field(key: "target")]
    property target : Kubernetes::Apis::Autoscaling::V2alpha1::CrossVersionObjectReference

    def initialize(*, @current_value : Int32, @metric_name : String, @target : Kubernetes::Apis::Autoscaling::V2alpha1::CrossVersionObjectReference)
    end
  end
end
