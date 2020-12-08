# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ResourceQuota sets aggregate quota restrictions enforced per namespace
  class Api::Core::V1::ResourceQuota
    getter api_version : String = "v1"
    getter kind : String = "ResourceQuota"
    # Standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec defines the desired quota. [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    property spec : Api::Core::V1::ResourceQuotaSpec | Nil

    # Status defines the actual enforced quota and its current usage. [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    property status : Api::Core::V1::ResourceQuotaStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "ResourceQuota", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Core::V1::ResourceQuotaSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Core::V1::ResourceQuotaStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "ResourceQuota", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Core::V1::ResourceQuotaSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Core::V1::ResourceQuotaStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Core::V1::ResourceQuotaSpec | Nil = nil, @status : Api::Core::V1::ResourceQuotaStatus | Nil = nil)
    end

    # create a ResourceQuota
    def create(context : String | Nil = nil, include_uninitialized : Bool | Nil = nil, dry_run : String | Nil = nil)
    end

    # list or watch objects of kind ResourceQuota
    def self.list(context : String | Nil = nil, include_uninitialized : Bool | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # delete collection of ResourceQuota
    def self.delete(context : String | Nil = nil, include_uninitialized : Bool | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # read the specified ResourceQuota
    def self.read(name : String, context : String | Nil = nil, exact : Bool | Nil = nil, export : Bool | Nil = nil, namespace : String = "default")
    end

    # replace the specified ResourceQuota
    def replace(context : String | Nil = nil, dry_run : String | Nil = nil)
    end

    # partially update the specified ResourceQuota
    def patch(context : String | Nil = nil, dry_run : String | Nil = nil)
    end

    # delete a ResourceQuota
    def delete(api_version : String | Nil = nil, dry_run : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, kind : String | Nil = nil, orphan_dependents : Bool | Nil = nil, preconditions : Apimachinery::Apis::Meta::V1::Preconditions | Nil = nil, propagation_policy : String | Nil = nil, context : String | Nil = nil)
    end

    # read status of the specified ResourceQuota
    def self.read_status(name : String, context : String | Nil = nil, namespace : String = "default")
    end

    # replace status of the specified ResourceQuota
    def replace_status(context : String | Nil = nil, dry_run : String | Nil = nil)
    end

    # partially update status of the specified ResourceQuota
    def patch_status(context : String | Nil = nil, dry_run : String | Nil = nil)
    end
  end

  module Resources::V1
    alias ResourceQuota = ::Pyrite::Api::Core::V1::ResourceQuota
  end
end
