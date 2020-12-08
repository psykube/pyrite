# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # DEPRECATED - This group version of StatefulSet is deprecated by [apps/v1beta2/StatefulSet. See the release notes for more information. StatefulSet represents a set of pods with consistent identities. Identities are defined as:](apps/v1beta2/StatefulSet. See the release notes for more information. StatefulSet represents a set of pods with consistent identities. Identities are defined as:)
  #  - Network: A single stable DNS and hostname.
  #  - Storage: As many VolumeClaims as requested.
  # The StatefulSet guarantees that a given network identity will always map to the same storage identity.
  class Api::Apps::V1beta1::StatefulSet
    getter api_version : String = "apps/v1beta1"
    getter kind : String = "StatefulSet"
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec defines the desired identities of pods in this set.
    property spec : Api::Apps::V1beta1::StatefulSetSpec | Nil

    # Status is the current status of Pods in this StatefulSet. This data may be out of date by some window of time.
    property status : Api::Apps::V1beta1::StatefulSetStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "apps/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "StatefulSet", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Apps::V1beta1::StatefulSetSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Apps::V1beta1::StatefulSetStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "apps/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "StatefulSet", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Apps::V1beta1::StatefulSetSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Apps::V1beta1::StatefulSetStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Apps::V1beta1::StatefulSetSpec | Nil = nil, @status : Api::Apps::V1beta1::StatefulSetStatus | Nil = nil)
    end

    # create a StatefulSet
    def create(context : String | Nil = nil, include_uninitialized : Bool | Nil = nil, dry_run : String | Nil = nil)
    end

    # list or watch objects of kind StatefulSet
    def self.list(context : String | Nil = nil, include_uninitialized : Bool | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # delete collection of StatefulSet
    def self.delete(context : String | Nil = nil, include_uninitialized : Bool | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # read the specified StatefulSet
    def self.read(name : String, context : String | Nil = nil, exact : Bool | Nil = nil, export : Bool | Nil = nil, namespace : String = "default")
    end

    # replace the specified StatefulSet
    def replace(context : String | Nil = nil, dry_run : String | Nil = nil)
    end

    # partially update the specified StatefulSet
    def patch(context : String | Nil = nil, dry_run : String | Nil = nil)
    end

    # delete a StatefulSet
    def delete(api_version : String | Nil = nil, dry_run : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, kind : String | Nil = nil, orphan_dependents : Bool | Nil = nil, preconditions : Apimachinery::Apis::Meta::V1::Preconditions | Nil = nil, propagation_policy : String | Nil = nil, context : String | Nil = nil)
    end

    # read status of the specified StatefulSet
    def self.read_status(name : String, context : String | Nil = nil, namespace : String = "default")
    end

    # replace status of the specified StatefulSet
    def replace_status(context : String | Nil = nil, dry_run : String | Nil = nil)
    end

    # partially update status of the specified StatefulSet
    def patch_status(context : String | Nil = nil, dry_run : String | Nil = nil)
    end
  end

  module Resources::Apps::V1beta1
    alias StatefulSet = ::Pyrite::Api::Apps::V1beta1::StatefulSet
  end
end
