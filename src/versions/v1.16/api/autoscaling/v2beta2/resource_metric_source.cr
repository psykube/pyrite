# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ResourceMetricSource indicates how to scale on a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  The values will be averaged together before being compared to the target.  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.  Only one "target" type should be set.
  class Api::Autoscaling::V2beta2::ResourceMetricSource
    # name is the name of the resource in question.
    property name : String

    # target specifies the target value for the given metric
    property target : Api::Autoscaling::V2beta2::MetricTarget

    ::YAML.mapping({
      name:   {type: String, nilable: false, key: "name", getter: false, setter: false},
      target: {type: Api::Autoscaling::V2beta2::MetricTarget, nilable: false, key: "target", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      name:   {type: String, nilable: false, key: "name", getter: false, setter: false},
      target: {type: Api::Autoscaling::V2beta2::MetricTarget, nilable: false, key: "target", getter: false, setter: false},
    }, true)

    def initialize(*, @name : String, @target : Api::Autoscaling::V2beta2::MetricTarget)
    end
  end
end
