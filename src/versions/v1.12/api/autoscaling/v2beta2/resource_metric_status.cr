# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ResourceMetricStatus indicates the current value of a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
  class Api::Autoscaling::V2beta2::ResourceMetricStatus
    # current contains the current value for the given metric
    property current : Api::Autoscaling::V2beta2::MetricValueStatus

    # Name is the name of the resource in question.
    property name : String

    ::YAML.mapping({
      current: {type: Api::Autoscaling::V2beta2::MetricValueStatus, nilable: false, key: "current", getter: false, setter: false},
      name:    {type: String, nilable: false, key: "name", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      current: {type: Api::Autoscaling::V2beta2::MetricValueStatus, nilable: false, key: "current", getter: false, setter: false},
      name:    {type: String, nilable: false, key: "name", getter: false, setter: false},
    }, true)

    def initialize(*, @current : Api::Autoscaling::V2beta2::MetricValueStatus, @name : String)
    end
  end
end
