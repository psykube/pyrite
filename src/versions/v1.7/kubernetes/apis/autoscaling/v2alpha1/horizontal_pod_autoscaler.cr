# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # HorizontalPodAutoscaler is the configuration for a horizontal pod autoscaler, which automatically manages the replica count of any resource implementing the scale subresource based on the metrics specified.
  class Kubernetes::Apis::Autoscaling::V2alpha1::HorizontalPodAutoscaler
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String = "autoscaling/v2alpha1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "HorizontalPodAutoscaler"
    # metadata is the standard object metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    @[::JSON::Field(key: "metadata")]
    @[::YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # spec is the specification for the behaviour of the autoscaler. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status.](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status.)
    @[::JSON::Field(key: "spec")]
    @[::YAML::Field(key: "spec")]
    property spec : Kubernetes::Apis::Autoscaling::V2alpha1::HorizontalPodAutoscalerSpec | Nil

    # status is the current information about the autoscaler.
    @[::JSON::Field(key: "status")]
    @[::YAML::Field(key: "status")]
    property status : Kubernetes::Apis::Autoscaling::V2alpha1::HorizontalPodAutoscalerStatus | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Apis::Autoscaling::V2alpha1::HorizontalPodAutoscalerSpec | Nil = nil, @status : Kubernetes::Apis::Autoscaling::V2alpha1::HorizontalPodAutoscalerStatus | Nil = nil)
    end
  end

  module Resources::Autoscaling::V2alpha1
    alias HorizontalPodAutoscaler = ::Pyrite::Kubernetes::Apis::Autoscaling::V2alpha1::HorizontalPodAutoscaler
  end
end
