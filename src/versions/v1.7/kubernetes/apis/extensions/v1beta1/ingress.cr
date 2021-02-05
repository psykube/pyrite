# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Ingress is a collection of rules that allow inbound connections to reach the endpoints defined by a backend. An Ingress can be configured to give services externally-reachable urls, load balance traffic, terminate SSL, offer name based virtual hosting etc.
  class Kubernetes::Apis::Extensions::V1beta1::Ingress
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[JSON::Field(key: "apiVersion")]
    @[YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String = "extensions/v1beta1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "Ingress"
    # Standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    @[JSON::Field(key: "metadata")]
    @[YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec is the desired state of the Ingress. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    @[JSON::Field(key: "spec")]
    @[YAML::Field(key: "spec")]
    property spec : Kubernetes::Apis::Extensions::V1beta1::IngressSpec | Nil

    # Status is the current state of the Ingress. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    @[JSON::Field(key: "status")]
    @[YAML::Field(key: "status")]
    property status : Kubernetes::Apis::Extensions::V1beta1::IngressStatus | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Apis::Extensions::V1beta1::IngressSpec | Nil = nil, @status : Kubernetes::Apis::Extensions::V1beta1::IngressStatus | Nil = nil)
    end
  end

  module Resources::Extensions::V1beta1
    alias Ingress = ::Pyrite::Kubernetes::Apis::Extensions::V1beta1::Ingress
  end
end
