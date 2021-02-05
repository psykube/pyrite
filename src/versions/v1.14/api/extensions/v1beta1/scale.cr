# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # represents a scaling request for a resource.
  class Api::Extensions::V1beta1::Scale
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[JSON::Field(key: "apiVersion")]
    @[YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String = "extensions/v1beta1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "Scale"
    # Standard object metadata; More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.)
    @[JSON::Field(key: "metadata")]
    @[YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # defines the behavior of the scale. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status.](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status.)
    @[JSON::Field(key: "spec")]
    @[YAML::Field(key: "spec")]
    property spec : Api::Extensions::V1beta1::ScaleSpec | Nil

    # current status of the scale. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status. Read-only.](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status. Read-only.)
    @[JSON::Field(key: "status")]
    @[YAML::Field(key: "status")]
    property status : Api::Extensions::V1beta1::ScaleStatus | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Extensions::V1beta1::ScaleSpec | Nil = nil, @status : Api::Extensions::V1beta1::ScaleStatus | Nil = nil)
    end
  end

  module Resources::Extensions::V1beta1
    alias Scale = ::Pyrite::Api::Extensions::V1beta1::Scale
  end
end
