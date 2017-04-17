# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# ResourceMetricSource indicates how to scale on a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g.CPU or memory). The values will be averaged together before being compared to the target. Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source. Only one "target" type should be set.
class K8S::V1_6_0::Kubernetes::Apis::Autoscaling::V2alpha1::ResourceMetricSource
  # name is the name of the resource in question.
  property name : String

  # targetAverageUtilization is the target value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.
  property target_average_utilization : Int32?

  # targetAverageValue is the the target value of the average of the resource metric across all relevant pods, as a raw value (instead of as a percentage of the request), similar to the "pods" metric source type.
  property target_average_value : ::K8S::V1_6_0::Apimachinery::Api::Resource::Quantity

  YAML.mapping({name:                       {type: String, nilable: false, key: name, getter: false, setter: false},
                target_average_utilization: {type: Int32, nilable: true, key: targetAverageUtilization, getter: false, setter: false},
                target_average_value:       {type: ::K8S::V1_6_0::Apimachinery::Api::Resource::Quantity, nilable: true, key: targetAverageValue, getter: false, setter: false}}, true)

  JSON.mapping({name:                       {type: String, nilable: false, key: name, getter: false, setter: false},
                target_average_utilization: {type: Int32, nilable: true, key: targetAverageUtilization, getter: false, setter: false},
                target_average_value:       {type: ::K8S::V1_6_0::Apimachinery::Api::Resource::Quantity, nilable: true, key: targetAverageValue, getter: false, setter: false}}, true)

  def initialize(@name, @target_average_utilization = nil, @target_average_value = nil)
  end
end
