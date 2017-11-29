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
  end

  module Resources::Extensions::V1beta1
    alias PodSecurityPolicy = ::Pyrite::Kubernetes::Apis::Extensions::V1beta1::PodSecurityPolicy
  end
end
