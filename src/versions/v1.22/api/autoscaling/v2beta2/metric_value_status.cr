# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # MetricValueStatus holds the current value for a metric
  class Api::Autoscaling::V2beta2::MetricValueStatus < Kubernetes::Spec
    # currentAverageUtilization is the current value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.
    @[::JSON::Field(key: "averageUtilization")]
    @[::YAML::Field(key: "averageUtilization")]
    property average_utilization : Int32 | Nil

    # averageValue is the current value of the average of the metric across all relevant pods (as a quantity)
    @[::JSON::Field(key: "averageValue")]
    @[::YAML::Field(key: "averageValue")]
    property average_value : Int32 | Nil

    # value is the current value of the metric (as a quantity).
    @[::JSON::Field(key: "value")]
    @[::YAML::Field(key: "value")]
    property value : Int32 | Nil

    def initialize(*, @average_utilization : Int32 | Nil = nil, @average_value : Int32 | Nil = nil, @value : Int32 | Nil = nil)
    end
  end
end
