# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # configuration of a horizontal pod autoscaler.
  class Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscaler
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion", converter: ::Pyrite::StringChecker.new("autoscaling/v1"))]
    @[::YAML::Field(key: "apiVersion", converter: ::Pyrite::StringChecker.new("autoscaling/v1"))]
    # The API and version we are accessing.
    getter api_version : String = "autoscaling/v1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "HorizontalPodAutoscaler"
    # Standard object metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    @[::JSON::Field(key: "metadata")]
    @[::YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # behaviour of autoscaler. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status.](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status.)
    @[::JSON::Field(key: "spec")]
    @[::YAML::Field(key: "spec")]
    property spec : Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscalerSpec | Nil

    # current information about the autoscaler.
    @[::JSON::Field(key: "status")]
    @[::YAML::Field(key: "status")]
    property status : Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscalerStatus | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscalerSpec | Nil = nil, @status : Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscalerStatus | Nil = nil)
    end
  end

  module Resources::Autoscaling::V1
    alias HorizontalPodAutoscaler = ::Pyrite::Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscaler
  end
end
