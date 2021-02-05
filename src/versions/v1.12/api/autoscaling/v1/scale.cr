# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Scale represents a scaling request for a resource.
  class Api::Autoscaling::V1::Scale
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion", converter: ::Pyrite::StringChecker.new("autoscaling/v1"))]
    @[::YAML::Field(key: "apiVersion", converter: ::Pyrite::StringChecker.new("autoscaling/v1"))]
    # The API and version we are accessing.
    getter api_version : String = "autoscaling/v1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "Scale"
    # Standard object metadata; More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata.](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata.)
    @[::JSON::Field(key: "metadata")]
    @[::YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # defines the behavior of the scale. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status.](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status.)
    @[::JSON::Field(key: "spec")]
    @[::YAML::Field(key: "spec")]
    property spec : Api::Autoscaling::V1::ScaleSpec | Nil

    # current status of the scale. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status. Read-only.](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status. Read-only.)
    @[::JSON::Field(key: "status")]
    @[::YAML::Field(key: "status")]
    property status : Api::Autoscaling::V1::ScaleStatus | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Autoscaling::V1::ScaleSpec | Nil = nil, @status : Api::Autoscaling::V1::ScaleStatus | Nil = nil)
    end
  end

  module Resources::Autoscaling::V1
    alias Scale = ::Pyrite::Api::Autoscaling::V1::Scale
  end
end
