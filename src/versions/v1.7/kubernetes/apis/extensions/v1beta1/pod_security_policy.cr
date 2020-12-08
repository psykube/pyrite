# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Pod Security Policy governs the ability to make requests that affect the Security Context that will be applied to a pod and container.
  class Kubernetes::Apis::Extensions::V1beta1::PodSecurityPolicy
    getter api_version : String = "extensions/v1beta1"
    getter kind : String = "PodSecurityPolicy"
    # Standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # spec defines the policy enforced.
    property spec : Kubernetes::Apis::Extensions::V1beta1::PodSecurityPolicySpec | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "extensions/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "PodSecurityPolicy", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Extensions::V1beta1::PodSecurityPolicySpec, nilable: true, key: "spec", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "extensions/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "PodSecurityPolicy", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Extensions::V1beta1::PodSecurityPolicySpec, nilable: true, key: "spec", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Apis::Extensions::V1beta1::PodSecurityPolicySpec | Nil = nil)
    end

    # create a PodSecurityPolicy
    def create(context : String | Nil = nil)
    end

    # list or watch objects of kind PodSecurityPolicy
    def self.list(context : String | Nil = nil, field_selector : String | Nil = nil, include_uninitialized : Bool | Nil = nil, label_selector : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # delete collection of PodSecurityPolicy
    def self.delete(context : String | Nil = nil, field_selector : String | Nil = nil, include_uninitialized : Bool | Nil = nil, label_selector : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # read the specified PodSecurityPolicy
    def self.read(name : String, context : String | Nil = nil, exact : Bool | Nil = nil, export : Bool | Nil = nil)
    end

    # replace the specified PodSecurityPolicy
    def replace(context : String | Nil = nil)
    end

    # partially update the specified PodSecurityPolicy
    def patch(context : String | Nil = nil)
    end

    # delete a PodSecurityPolicy
    def delete(api_version : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, kind : String | Nil = nil, orphan_dependents : Bool | Nil = nil, preconditions : Apimachinery::Apis::Meta::V1::Preconditions | Nil = nil, propagation_policy : String | Nil = nil, context : String | Nil = nil)
    end
  end

  module Resources::Extensions::V1beta1
    alias PodSecurityPolicy = ::Pyrite::Kubernetes::Apis::Extensions::V1beta1::PodSecurityPolicy
  end
end
