# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NetworkPolicy describes what network traffic is allowed for a set of Pods
  class Kubernetes::Apis::Networking::V1::NetworkPolicy
    getter api_version : String = "networking/v1"
    getter kind : String = "NetworkPolicy"
    # Standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Specification of the desired behavior for this NetworkPolicy.
    property spec : Kubernetes::Apis::Networking::V1::NetworkPolicySpec | Nil

    YAML.mapping({
      api_version: {type: String, default: "networking/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "NetworkPolicy", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata"},
      spec:        {type: Kubernetes::Apis::Networking::V1::NetworkPolicySpec, nilable: true, key: "spec"},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "networking/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "NetworkPolicy", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata"},
      spec:        {type: Kubernetes::Apis::Networking::V1::NetworkPolicySpec, nilable: true, key: "spec"},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Apis::Networking::V1::NetworkPolicySpec | Nil = nil)
    end
  end

  module Resources::Networking::V1
    alias NetworkPolicy = Kubernetes::Apis::Networking::V1::NetworkPolicy
  end
end
