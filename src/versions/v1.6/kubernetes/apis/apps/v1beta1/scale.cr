# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Scale represents a scaling request for a resource.
  class Kubernetes::Apis::Apps::V1beta1::Scale
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[JSON::Field(key: "apiVersion")]
    @[YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String = "apps/v1beta1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "Scale"
    # Standard object metadata; More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata.](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata.)
    @[JSON::Field(key: "metadata")]
    @[YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # defines the behavior of the scale. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status.](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status.)
    @[JSON::Field(key: "spec")]
    @[YAML::Field(key: "spec")]
    property spec : Kubernetes::Apis::Apps::V1beta1::ScaleSpec | Nil

    # current status of the scale. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status. Read-only.](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status. Read-only.)
    @[JSON::Field(key: "status")]
    @[YAML::Field(key: "status")]
    property status : Kubernetes::Apis::Apps::V1beta1::ScaleStatus | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Apis::Apps::V1beta1::ScaleSpec | Nil = nil, @status : Kubernetes::Apis::Apps::V1beta1::ScaleStatus | Nil = nil)
    end
  end

  module Resources::Apps::V1beta1
    alias Scale = ::Pyrite::Kubernetes::Apis::Apps::V1beta1::Scale
  end
end
