# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # HPAScalingPolicy is a single policy which must hold true for a specified past interval.
  class Api::Autoscaling::V2beta2::HPAScalingPolicy < Kubernetes::Spec
    # PeriodSeconds specifies the window of time for which the policy should hold true. PeriodSeconds must be greater than zero and less than or equal to 1800 (30 min).
    @[::JSON::Field(key: "periodSeconds")]
    @[::YAML::Field(key: "periodSeconds")]
    property period_seconds : Int32

    # Type is used to specify the scaling policy.
    @[::JSON::Field(key: "type")]
    @[::YAML::Field(key: "type")]
    property type : String

    # Value contains the amount of change which is permitted by the policy. It must be greater than zero
    @[::JSON::Field(key: "value")]
    @[::YAML::Field(key: "value")]
    property value : Int32

    def initialize(*, @period_seconds : Int32, @type : String, @value : Int32)
    end
  end
end
