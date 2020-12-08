# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  class Kubernetes::Apis::Extensions::V1beta1::NetworkPolicy
    getter api_version : String = "extensions/v1beta1"
    getter kind : String = "NetworkPolicy"
    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Specification of the desired behavior for this NetworkPolicy.
    property spec : Kubernetes::Apis::Extensions::V1beta1::NetworkPolicySpec | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "extensions/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "NetworkPolicy", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Extensions::V1beta1::NetworkPolicySpec, nilable: true, key: "spec", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "extensions/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "NetworkPolicy", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Extensions::V1beta1::NetworkPolicySpec, nilable: true, key: "spec", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Apis::Extensions::V1beta1::NetworkPolicySpec | Nil = nil)
    end

    # create a NetworkPolicy
    def create(context : String | Nil = nil)
    end

    # list or watch objects of kind NetworkPolicy
    def self.list(context : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # delete collection of NetworkPolicy
    def self.delete(context : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # read the specified NetworkPolicy
    def self.read(name : String, context : String | Nil = nil, exact : Bool | Nil = nil, export : Bool | Nil = nil, namespace : String = "default")
    end

    # replace the specified NetworkPolicy
    def replace(context : String | Nil = nil)
    end

    # partially update the specified NetworkPolicy
    def patch(context : String | Nil = nil)
    end

    # delete a NetworkPolicy
    def delete(api_version : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, kind : String | Nil = nil, orphan_dependents : Bool | Nil = nil, preconditions : Apimachinery::Apis::Meta::V1::Preconditions | Nil = nil, propagation_policy : String | Nil = nil, context : String | Nil = nil)
    end
  end

  module Resources::Extensions::V1beta1
    alias NetworkPolicy = ::Pyrite::Kubernetes::Apis::Extensions::V1beta1::NetworkPolicy
  end
end
