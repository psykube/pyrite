# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # HPAScalingPolicy is a single policy which must hold true for a specified past interval.
  class Api::Autoscaling::V2beta2::HPAScalingPolicy
    # PeriodSeconds specifies the window of time for which the policy should hold true. PeriodSeconds must be greater than zero and less than or equal to 1800 (30 min).
    property period_seconds : Int32

    # Type is used to specify the scaling policy.
    property type : String

    # Value contains the amount of change which is permitted by the policy. It must be greater than zero
    property value : Int32

    ::YAML.mapping({
      period_seconds: {type: Int32, nilable: false, key: "periodSeconds", getter: false, setter: false},
      type:           {type: String, nilable: false, key: "type", getter: false, setter: false},
      value:          {type: Int32, nilable: false, key: "value", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      period_seconds: {type: Int32, nilable: false, key: "periodSeconds", getter: false, setter: false},
      type:           {type: String, nilable: false, key: "type", getter: false, setter: false},
      value:          {type: Int32, nilable: false, key: "value", getter: false, setter: false},
    }, true)

    def initialize(*, @period_seconds : Int32, @type : String, @value : Int32)
    end
  end
end
