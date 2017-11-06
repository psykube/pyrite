# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # StatefulSet represents a set of pods with consistent identities. Identities are defined as:
  #  - Network: A single stable DNS and hostname.
  #  - Storage: As many VolumeClaims as requested.
  # The StatefulSet guarantees that a given network identity will always map to the same storage identity.
  class Kubernetes::Apis::Apps::V1beta1::StatefulSet
    getter api_version : String = "apps/v1beta1"
    getter kind : String = "StatefulSet"
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec defines the desired identities of pods in this set.
    property spec : Kubernetes::Apis::Apps::V1beta1::StatefulSetSpec | Nil

    # Status is the current status of Pods in this StatefulSet. This data may be out of date by some window of time.
    property status : Kubernetes::Apis::Apps::V1beta1::StatefulSetStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "apps/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "StatefulSet", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Apps::V1beta1::StatefulSetSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Kubernetes::Apis::Apps::V1beta1::StatefulSetStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "apps/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "StatefulSet", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Apps::V1beta1::StatefulSetSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Kubernetes::Apis::Apps::V1beta1::StatefulSetStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Apis::Apps::V1beta1::StatefulSetSpec | Nil = nil, @status : Kubernetes::Apis::Apps::V1beta1::StatefulSetStatus | Nil = nil)
    end
  end

  module Resources::Apps::V1beta1
    alias StatefulSet = ::Pyrite::Kubernetes::Apis::Apps::V1beta1::StatefulSet
  end
end
