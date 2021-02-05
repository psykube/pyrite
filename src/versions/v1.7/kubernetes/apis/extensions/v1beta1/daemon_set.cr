# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # DaemonSet represents the configuration of a daemon set.
  class Kubernetes::Apis::Extensions::V1beta1::DaemonSet
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[JSON::Field(key: "apiVersion")]
    @[YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String = "extensions/v1beta1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "DaemonSet"
    # Standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    @[JSON::Field(key: "metadata")]
    @[YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # The desired behavior of this daemon set. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    @[JSON::Field(key: "spec")]
    @[YAML::Field(key: "spec")]
    property spec : Kubernetes::Apis::Extensions::V1beta1::DaemonSetSpec | Nil

    # The current status of this daemon set. This data may be out of date by some window of time. Populated by the system. Read-only. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    @[JSON::Field(key: "status")]
    @[YAML::Field(key: "status")]
    property status : Kubernetes::Apis::Extensions::V1beta1::DaemonSetStatus | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Apis::Extensions::V1beta1::DaemonSetSpec | Nil = nil, @status : Kubernetes::Apis::Extensions::V1beta1::DaemonSetStatus | Nil = nil)
    end
  end

  module Resources::Extensions::V1beta1
    alias DaemonSet = ::Pyrite::Kubernetes::Apis::Extensions::V1beta1::DaemonSet
  end
end
