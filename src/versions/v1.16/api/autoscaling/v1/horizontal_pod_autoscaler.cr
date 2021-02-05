# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # configuration of a horizontal pod autoscaler.
  class Api::Autoscaling::V1::HorizontalPodAutoscaler
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion", converter: ::Pyrite::StringChecker.new("autoscaling/v1"))]
    @[::YAML::Field(key: "apiVersion", converter: ::Pyrite::StringChecker.new("autoscaling/v1"))]
    # The API and version we are accessing.
    getter api_version : String = "autoscaling/v1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "HorizontalPodAutoscaler"
    # Standard object metadata. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)
    @[::JSON::Field(key: "metadata")]
    @[::YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # behaviour of autoscaler. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status.](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status.)
    @[::JSON::Field(key: "spec")]
    @[::YAML::Field(key: "spec")]
    property spec : Api::Autoscaling::V1::HorizontalPodAutoscalerSpec | Nil

    # current information about the autoscaler.
    @[::JSON::Field(key: "status")]
    @[::YAML::Field(key: "status")]
    property status : Api::Autoscaling::V1::HorizontalPodAutoscalerStatus | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Autoscaling::V1::HorizontalPodAutoscalerSpec | Nil = nil, @status : Api::Autoscaling::V1::HorizontalPodAutoscalerStatus | Nil = nil)
    end
  end

  module Resources::Autoscaling::V1
    alias HorizontalPodAutoscaler = ::Pyrite::Api::Autoscaling::V1::HorizontalPodAutoscaler
  end
end
