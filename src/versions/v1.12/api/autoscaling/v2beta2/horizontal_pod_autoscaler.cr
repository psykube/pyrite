# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # HorizontalPodAutoscaler is the configuration for a horizontal pod autoscaler, which automatically manages the replica count of any resource implementing the scale subresource based on the metrics specified.
  class Api::Autoscaling::V2beta2::HorizontalPodAutoscaler
    getter api_version : String = "autoscaling/v2beta2"
    getter kind : String = "HorizontalPodAutoscaler"
    # metadata is the standard object metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # spec is the specification for the behaviour of the autoscaler. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status.](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status.)
    property spec : Api::Autoscaling::V2beta2::HorizontalPodAutoscalerSpec | Nil

    # status is the current information about the autoscaler.
    property status : Api::Autoscaling::V2beta2::HorizontalPodAutoscalerStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "autoscaling/v2beta2", key: "apiVersion", setter: false},
      kind:        {type: String, default: "HorizontalPodAutoscaler", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Autoscaling::V2beta2::HorizontalPodAutoscalerSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Autoscaling::V2beta2::HorizontalPodAutoscalerStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "autoscaling/v2beta2", key: "apiVersion", setter: false},
      kind:        {type: String, default: "HorizontalPodAutoscaler", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Autoscaling::V2beta2::HorizontalPodAutoscalerSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Autoscaling::V2beta2::HorizontalPodAutoscalerStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Autoscaling::V2beta2::HorizontalPodAutoscalerSpec | Nil = nil, @status : Api::Autoscaling::V2beta2::HorizontalPodAutoscalerStatus | Nil = nil)
    end
  end

  module Resources::Autoscaling::V2beta2
    alias HorizontalPodAutoscaler = ::Pyrite::Api::Autoscaling::V2beta2::HorizontalPodAutoscaler
  end
end
