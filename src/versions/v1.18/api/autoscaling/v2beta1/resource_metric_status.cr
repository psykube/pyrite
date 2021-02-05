# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ResourceMetricStatus indicates the current value of a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
  class Api::Autoscaling::V2beta1::ResourceMetricStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # currentAverageUtilization is the current value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.  It will only be present if `targetAverageValue` was set in the corresponding metric specification.
    @[::JSON::Field(key: "currentAverageUtilization")]
    @[::YAML::Field(key: "currentAverageUtilization")]
    property current_average_utilization : Int32 | Nil

    # currentAverageValue is the current value of the average of the resource metric across all relevant pods, as a raw value (instead of as a percentage of the request), similar to the "pods" metric source type. It will always be set, regardless of the corresponding metric specification.
    @[::JSON::Field(key: "currentAverageValue")]
    @[::YAML::Field(key: "currentAverageValue")]
    property current_average_value : Int32

    # name is the name of the resource in question.
    @[::JSON::Field(key: "name")]
    @[::YAML::Field(key: "name")]
    property name : String

    def initialize(*, @current_average_utilization : Int32 | Nil = nil, @current_average_value : Int32, @name : String)
    end
  end
end
