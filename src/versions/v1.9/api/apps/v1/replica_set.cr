# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ReplicaSet ensures that a specified number of pod replicas are running at any given time.
  class Api::Apps::V1::ReplicaSet
    getter api_version : String = "apps/v1"
    getter kind : String = "ReplicaSet"
    # If the Labels of a ReplicaSet are empty, they are defaulted to be the same as the Pod(s) that the ReplicaSet manages. Standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec defines the specification of the desired behavior of the ReplicaSet. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    property spec : Api::Apps::V1::ReplicaSetSpec | Nil

    # Status is the most recently observed status of the ReplicaSet. This data may be out of date by some window of time. Populated by the system. Read-only. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    property status : Api::Apps::V1::ReplicaSetStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "apps/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "ReplicaSet", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Apps::V1::ReplicaSetSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Apps::V1::ReplicaSetStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "apps/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "ReplicaSet", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Apps::V1::ReplicaSetSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Apps::V1::ReplicaSetStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Apps::V1::ReplicaSetSpec | Nil = nil, @status : Api::Apps::V1::ReplicaSetStatus | Nil = nil)
    end
  end

  module Resources::Apps::V1
    alias ReplicaSet = ::Pyrite::Api::Apps::V1::ReplicaSet
  end
end
