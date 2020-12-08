# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NetworkPolicy describes what network traffic is allowed for a set of Pods
  class Api::Networking::V1::NetworkPolicy
    getter api_version : String = "networking/v1"
    getter kind : String = "NetworkPolicy"
    # Standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Specification of the desired behavior for this NetworkPolicy.
    property spec : Api::Networking::V1::NetworkPolicySpec | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "networking/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "NetworkPolicy", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Networking::V1::NetworkPolicySpec, nilable: true, key: "spec", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "networking/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "NetworkPolicy", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Networking::V1::NetworkPolicySpec, nilable: true, key: "spec", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Networking::V1::NetworkPolicySpec | Nil = nil)
    end

    # create a NetworkPolicy
    def create(context : String | Nil = nil, include_uninitialized : Bool | Nil = nil, dry_run : String | Nil = nil)
    end

    # list or watch objects of kind NetworkPolicy
    def self.list(context : String | Nil = nil, include_uninitialized : Bool | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # delete collection of NetworkPolicy
    def self.delete(context : String | Nil = nil, include_uninitialized : Bool | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # read the specified NetworkPolicy
    def self.read(name : String, context : String | Nil = nil, exact : Bool | Nil = nil, export : Bool | Nil = nil, namespace : String = "default")
    end

    # replace the specified NetworkPolicy
    def replace(context : String | Nil = nil, dry_run : String | Nil = nil)
    end

    # partially update the specified NetworkPolicy
    def patch(context : String | Nil = nil, dry_run : String | Nil = nil)
    end

    # delete a NetworkPolicy
    def delete(context : String | Nil = nil, dry_run : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, orphan_dependents : Bool | Nil = nil, propagation_policy : String | Nil = nil)
    end
  end

  module Resources::Networking::V1
    alias NetworkPolicy = ::Pyrite::Api::Networking::V1::NetworkPolicy
  end
end
