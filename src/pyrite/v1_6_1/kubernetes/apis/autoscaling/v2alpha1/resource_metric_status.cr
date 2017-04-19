# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# ResourceMetricStatus indicates the current value of a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
class Pyrite::V1_6_1::Kubernetes::Apis::Autoscaling::V2alpha1::ResourceMetricStatus
  # currentAverageUtilization is the current value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.  It will only be present if `targetAverageValue` was set in the corresponding metric specification.
  property current_average_utilization : Int32?

  # currentAverageValue is the the current value of the average of the resource metric across all relevant pods, as a raw value (instead of as a percentage of the request), similar to the "pods" metric source type. It will always be set, regardless of the corresponding metric specification.
  property current_average_value : ::Pyrite::V1_6_1::Apimachinery::Api::Resource::Quantity

  # name is the name of the resource in question.
  property name : String

  YAML.mapping({current_average_utilization: {type: Int32, nilable: true, key: currentAverageUtilization, getter: false, setter: false},
                current_average_value:       {type: ::Pyrite::V1_6_1::Apimachinery::Api::Resource::Quantity, nilable: false, key: currentAverageValue, getter: false, setter: false},
                name:                        {type: String, nilable: false, key: name, getter: false, setter: false}}, true)

  JSON.mapping({current_average_utilization: {type: Int32, nilable: true, key: currentAverageUtilization, getter: false, setter: false},
                current_average_value:       {type: ::Pyrite::V1_6_1::Apimachinery::Api::Resource::Quantity, nilable: false, key: currentAverageValue, getter: false, setter: false},
                name:                        {type: String, nilable: false, key: name, getter: false, setter: false}}, true)

  def initialize(@current_average_utilization : Int32? = nil, @current_average_value : ::Pyrite::V1_6_1::Apimachinery::Api::Resource::Quantity = nil, @name : String? = nil)
  end
end
