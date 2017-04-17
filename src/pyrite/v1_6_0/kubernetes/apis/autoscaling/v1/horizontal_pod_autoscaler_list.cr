# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# list of horizontal pod autoscaler objects.
class Pyrite::V1_6_0::Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscalerList
  # list of horizontal pod autoscaler objects.
  property items : Array(::Pyrite::V1_6_0::Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscaler)

  # Standard list metadata.
  property metadata : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "HorizontalPodAutoscalerList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    items:       {type: Array(::Pyrite::V1_6_0::Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscaler), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "HorizontalPodAutoscalerList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    items:       {type: Array(::Pyrite::V1_6_0::Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscaler), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@items, @metadata = nil)
    @api_version = "HorizontalPodAutoscalerList"
    @kind = "v1"
  end

  # list or watch objects of kind HorizontalPodAutoscaler
  def self.get(field_selector : String?, label_selector : String?, pretty : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?)
  end

  # list or watch objects of kind HorizontalPodAutoscaler
  def self.get(pretty : String?, field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # create a HorizontalPodAutoscaler
  def self.create(pretty : String?, metadata = nil, spec = nil, status = nil, namespace : String = "default")
  end

  # delete collection of HorizontalPodAutoscaler
  def self.delete(pretty : String?, field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end
end
