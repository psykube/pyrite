# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# list of horizontal pod autoscaler objects.
class Pyrite::V1_6_1::Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscalerList
  # list of horizontal pod autoscaler objects.
  property items : Array(::Pyrite::V1_6_1::Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscaler)

  # Standard list metadata.
  property metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "HorizontalPodAutoscalerList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    items:       {type: Array(::Pyrite::V1_6_1::Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscaler), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "HorizontalPodAutoscalerList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    items:       {type: Array(::Pyrite::V1_6_1::Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscaler), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@api_version : String? = nil, @items : Array? = nil, @kind : String? = nil, @metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta = nil)
    @api_version = "HorizontalPodAutoscalerList"
    @kind = "v1"
  end

  # list or watch objects of kind HorizontalPodAutoscaler
  def self.list_for_all_namespaces(context : String? = nil, field_selector : String? = nil, label_selector : String? = nil, resource_version : String? = nil, timeout_seconds : Int32? = nil, watch : Bool? = nil)
  end

  # create a HorizontalPodAutoscaler
  def create(metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta = nil, spec : ::Pyrite::V1_6_1::Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscalerSpec = nil, status : ::Pyrite::V1_6_1::Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscalerStatus = nil, context : String? = nil)
  end

  # list or watch objects of kind HorizontalPodAutoscaler
  def self.list(context : String? = nil, field_selector : String? = nil, label_selector : String? = nil, resource_version : String? = nil, timeout_seconds : Int32? = nil, watch : Bool? = nil, namespace : String = "default")
  end

  # delete collection of HorizontalPodAutoscaler
  def self.delete(context : String? = nil, field_selector : String? = nil, label_selector : String? = nil, resource_version : String? = nil, timeout_seconds : Int32? = nil, watch : Bool? = nil, namespace : String = "default")
  end
end
