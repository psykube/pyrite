# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ReplicaSet represents the configuration of a ReplicaSet.
  class Kubernetes::Apis::Extensions::V1beta1::ReplicaSet
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String = "extensions/v1beta1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "ReplicaSet"
    # If the Labels of a ReplicaSet are empty, they are defaulted to be the same as the Pod(s) that the ReplicaSet manages. Standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    @[::JSON::Field(key: "metadata")]
    @[::YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec defines the specification of the desired behavior of the ReplicaSet. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    @[::JSON::Field(key: "spec")]
    @[::YAML::Field(key: "spec")]
    property spec : Kubernetes::Apis::Extensions::V1beta1::ReplicaSetSpec | Nil

    # Status is the most recently observed status of the ReplicaSet. This data may be out of date by some window of time. Populated by the system. Read-only. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    @[::JSON::Field(key: "status")]
    @[::YAML::Field(key: "status")]
    property status : Kubernetes::Apis::Extensions::V1beta1::ReplicaSetStatus | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Apis::Extensions::V1beta1::ReplicaSetSpec | Nil = nil, @status : Kubernetes::Apis::Extensions::V1beta1::ReplicaSetStatus | Nil = nil)
    end
  end

  module Resources::Extensions::V1beta1
    alias ReplicaSet = ::Pyrite::Kubernetes::Apis::Extensions::V1beta1::ReplicaSet
  end
end
