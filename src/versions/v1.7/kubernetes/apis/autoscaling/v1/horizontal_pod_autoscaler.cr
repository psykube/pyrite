# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # configuration of a horizontal pod autoscaler.
  class Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscaler
    getter api_version : String = "autoscaling/v1"
    getter kind : String = "HorizontalPodAutoscaler"
    # Standard object metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # behaviour of autoscaler. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status.](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status.)
    property spec : Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscalerSpec | Nil

    # current information about the autoscaler.
    property status : Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscalerStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "autoscaling/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "HorizontalPodAutoscaler", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscalerSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscalerStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "autoscaling/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "HorizontalPodAutoscaler", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscalerSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscalerStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscalerSpec | Nil = nil, @status : Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscalerStatus | Nil = nil)
    end

    # create a HorizontalPodAutoscaler
    def create(context : String | Nil = nil)
    end

    # list or watch objects of kind HorizontalPodAutoscaler
    def self.list(context : String | Nil = nil, field_selector : String | Nil = nil, include_uninitialized : Bool | Nil = nil, label_selector : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # delete collection of HorizontalPodAutoscaler
    def self.delete(context : String | Nil = nil, field_selector : String | Nil = nil, include_uninitialized : Bool | Nil = nil, label_selector : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # read the specified HorizontalPodAutoscaler
    def self.read(name : String, context : String | Nil = nil, exact : Bool | Nil = nil, export : Bool | Nil = nil, namespace : String = "default")
    end

    # replace the specified HorizontalPodAutoscaler
    def replace(context : String | Nil = nil)
    end

    # partially update the specified HorizontalPodAutoscaler
    def patch(context : String | Nil = nil)
    end

    # delete a HorizontalPodAutoscaler
    def delete(api_version : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, kind : String | Nil = nil, orphan_dependents : Bool | Nil = nil, preconditions : Apimachinery::Apis::Meta::V1::Preconditions | Nil = nil, propagation_policy : String | Nil = nil, context : String | Nil = nil)
    end

    # read status of the specified HorizontalPodAutoscaler
    def self.read_status(name : String, context : String | Nil = nil, namespace : String = "default")
    end

    # replace status of the specified HorizontalPodAutoscaler
    def replace_status(context : String | Nil = nil)
    end

    # partially update status of the specified HorizontalPodAutoscaler
    def patch_status(context : String | Nil = nil)
    end
  end

  module Resources::Autoscaling::V1
    alias HorizontalPodAutoscaler = ::Pyrite::Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscaler
  end
end
