# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ObjectMetricSource indicates how to scale on a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
  class Api::Autoscaling::V2beta1::ObjectMetricSource < Kubernetes::Spec
    # metricName is the name of the metric in question.
    @[::JSON::Field(key: "metricName")]
    @[::YAML::Field(key: "metricName")]
    property metric_name : String

    # target is the described Kubernetes object.
    @[::JSON::Field(key: "target")]
    @[::YAML::Field(key: "target")]
    property target : Api::Autoscaling::V2beta1::CrossVersionObjectReference

    # targetValue is the target value of the metric (as a quantity).
    @[::JSON::Field(key: "targetValue")]
    @[::YAML::Field(key: "targetValue")]
    property target_value : Int32

    def initialize(*, @metric_name : String, @target : Api::Autoscaling::V2beta1::CrossVersionObjectReference, @target_value : Int32)
    end
  end
end
