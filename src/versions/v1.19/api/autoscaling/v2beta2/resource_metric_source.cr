# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ResourceMetricSource indicates how to scale on a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  The values will be averaged together before being compared to the target.  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.  Only one "target" type should be set.
  class Api::Autoscaling::V2beta2::ResourceMetricSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # name is the name of the resource in question.
    @[::JSON::Field(key: "name")]
    @[::YAML::Field(key: "name")]
    property name : String

    # target specifies the target value for the given metric
    @[::JSON::Field(key: "target")]
    @[::YAML::Field(key: "target")]
    property target : Api::Autoscaling::V2beta2::MetricTarget

    def initialize(*, @name : String, @target : Api::Autoscaling::V2beta2::MetricTarget)
    end
  end
end
