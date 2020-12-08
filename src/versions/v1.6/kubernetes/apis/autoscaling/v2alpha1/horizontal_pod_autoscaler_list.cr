# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # HorizontalPodAutoscaler is a list of horizontal pod autoscaler objects.
  class Kubernetes::Apis::Autoscaling::V2alpha1::HorizontalPodAutoscalerList
    getter api_version : String = "v1"
    getter kind : String = "List"
    # items is the list of horizontal pod autoscaler objects.
    property items : Array(Kubernetes::Apis::Autoscaling::V2alpha1::HorizontalPodAutoscaler)

    # metadata is the standard list metadata.
    property metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "List", key: "kind", setter: false},
      items:       {type: Array(Kubernetes::Apis::Autoscaling::V2alpha1::HorizontalPodAutoscaler), nilable: false, key: "items", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "List", key: "kind", setter: false},
      items:       {type: Array(Kubernetes::Apis::Autoscaling::V2alpha1::HorizontalPodAutoscaler), nilable: false, key: "items", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    def initialize(*, @items : Array, @metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil = nil)
    end

    # list or watch objects of kind HorizontalPodAutoscaler
    def self.list_for_all_namespaces(context : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # create a HorizontalPodAutoscaler
    def create(metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, spec : Kubernetes::Apis::Autoscaling::V2alpha1::HorizontalPodAutoscalerSpec | Nil = nil, status : Kubernetes::Apis::Autoscaling::V2alpha1::HorizontalPodAutoscalerStatus | Nil = nil, context : String | Nil = nil)
    end

    # list or watch objects of kind HorizontalPodAutoscaler
    def self.list(context : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # delete collection of HorizontalPodAutoscaler
    def self.delete(context : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end
  end
end
