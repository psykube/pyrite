# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # MetricTarget defines the target value, average value, or average utilization of a specific metric
  class Api::Autoscaling::V2beta2::MetricTarget
    # averageUtilization is the target value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods. Currently only valid for Resource metric source type
    property average_utilization : Int32 | Nil

    # averageValue is the target value of the average of the metric across all relevant pods (as a quantity)
    property average_value : Int32 | Nil

    # type represents whether the metric type is Utilization, Value, or AverageValue
    property type : String

    # value is the target value of the metric (as a quantity).
    property value : Int32 | Nil

    ::YAML.mapping({
      average_utilization: {type: Int32, nilable: true, key: "averageUtilization", getter: false, setter: false},
      average_value:       {type: Int32, nilable: true, key: "averageValue", getter: false, setter: false},
      type:                {type: String, nilable: false, key: "type", getter: false, setter: false},
      value:               {type: Int32, nilable: true, key: "value", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      average_utilization: {type: Int32, nilable: true, key: "averageUtilization", getter: false, setter: false},
      average_value:       {type: Int32, nilable: true, key: "averageValue", getter: false, setter: false},
      type:                {type: String, nilable: false, key: "type", getter: false, setter: false},
      value:               {type: Int32, nilable: true, key: "value", getter: false, setter: false},
    }, true)

    def initialize(*, @type : String, @average_utilization : Int32 | Nil = nil, @average_value : Int32 | Nil = nil, @value : Int32 | Nil = nil)
    end
  end
end
