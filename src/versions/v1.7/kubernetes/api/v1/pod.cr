# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Pod is a collection of containers that can run on a host. This resource is created by clients and scheduled onto hosts.
  class Kubernetes::Api::V1::Pod
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[JSON::Field(key: "apiVersion")]
    @[YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String = "v1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "Pod"
    # Standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    @[JSON::Field(key: "metadata")]
    @[YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Specification of the desired behavior of the pod. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    @[JSON::Field(key: "spec")]
    @[YAML::Field(key: "spec")]
    property spec : Kubernetes::Api::V1::PodSpec | Nil

    # Most recently observed status of the pod. This data may not be up to date. Populated by the system. Read-only. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    @[JSON::Field(key: "status")]
    @[YAML::Field(key: "status")]
    property status : Kubernetes::Api::V1::PodStatus | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Api::V1::PodSpec | Nil = nil, @status : Kubernetes::Api::V1::PodStatus | Nil = nil)
    end
  end

  module Resources::V1
    alias Pod = ::Pyrite::Kubernetes::Api::V1::Pod
  end
end
