# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # MetricTarget defines the target value, average value, or average utilization of a specific metric
  class Api::Autoscaling::V2beta2::MetricTarget < Kubernetes::Spec
    # averageUtilization is the target value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods. Currently only valid for Resource metric source type
    @[::JSON::Field(key: "averageUtilization")]
    @[::YAML::Field(key: "averageUtilization")]
    property average_utilization : Int32 | Nil

    # averageValue is the target value of the average of the metric across all relevant pods (as a quantity)
    @[::JSON::Field(key: "averageValue")]
    @[::YAML::Field(key: "averageValue")]
    property average_value : Int32 | Nil

    # type represents whether the metric type is Utilization, Value, or AverageValue
    @[::JSON::Field(key: "type")]
    @[::YAML::Field(key: "type")]
    property type : String

    # value is the target value of the metric (as a quantity).
    @[::JSON::Field(key: "value")]
    @[::YAML::Field(key: "value")]
    property value : Int32 | Nil

    def initialize(*, @average_utilization : Int32 | Nil = nil, @average_value : Int32 | Nil = nil, @type : String, @value : Int32 | Nil = nil)
    end
  end
end
