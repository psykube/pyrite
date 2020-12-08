# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # HorizontalPodAutoscaler is the configuration for a horizontal pod autoscaler, which automatically manages the replica count of any resource implementing the scale subresource based on the metrics specified.
  class Api::Autoscaling::V2beta1::HorizontalPodAutoscaler
    getter api_version : String = "autoscaling/v2beta1"
    getter kind : String = "HorizontalPodAutoscaler"
    # metadata is the standard object metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # spec is the specification for the behaviour of the autoscaler. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status.](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status.)
    property spec : Api::Autoscaling::V2beta1::HorizontalPodAutoscalerSpec | Nil

    # status is the current information about the autoscaler.
    property status : Api::Autoscaling::V2beta1::HorizontalPodAutoscalerStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "autoscaling/v2beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "HorizontalPodAutoscaler", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Autoscaling::V2beta1::HorizontalPodAutoscalerSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Autoscaling::V2beta1::HorizontalPodAutoscalerStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "autoscaling/v2beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "HorizontalPodAutoscaler", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Autoscaling::V2beta1::HorizontalPodAutoscalerSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Autoscaling::V2beta1::HorizontalPodAutoscalerStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Autoscaling::V2beta1::HorizontalPodAutoscalerSpec | Nil = nil, @status : Api::Autoscaling::V2beta1::HorizontalPodAutoscalerStatus | Nil = nil)
    end

    # create a HorizontalPodAutoscaler
    def create(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil)
    end

    # list or watch objects of kind HorizontalPodAutoscaler
    def self.list(context : String | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # delete collection of HorizontalPodAutoscaler
    def self.delete(context : String | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # read the specified HorizontalPodAutoscaler
    def self.read(name : String, context : String | Nil = nil, exact : Bool | Nil = nil, export : Bool | Nil = nil, namespace : String = "default")
    end

    # replace the specified HorizontalPodAutoscaler
    def replace(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil)
    end

    # partially update the specified HorizontalPodAutoscaler
    def patch(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil, force : Bool | Nil = nil)
    end

    # delete a HorizontalPodAutoscaler
    def delete(context : String | Nil = nil, dry_run : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, orphan_dependents : Bool | Nil = nil, propagation_policy : String | Nil = nil)
    end

    # read status of the specified HorizontalPodAutoscaler
    def self.read_status(name : String, context : String | Nil = nil, namespace : String = "default")
    end

    # replace status of the specified HorizontalPodAutoscaler
    def replace_status(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil)
    end

    # partially update status of the specified HorizontalPodAutoscaler
    def patch_status(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil, force : Bool | Nil = nil)
    end
  end

  module Resources::Autoscaling::V2beta1
    alias HorizontalPodAutoscaler = ::Pyrite::Api::Autoscaling::V2beta1::HorizontalPodAutoscaler
  end
end
