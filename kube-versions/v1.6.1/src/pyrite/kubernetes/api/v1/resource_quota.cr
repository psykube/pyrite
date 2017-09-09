# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ResourceQuota sets aggregate quota restrictions enforced per namespace
  class Kubernetes::Api::V1::ResourceQuota
    getter api_version : String = "v1"
    getter kind : String = "ResourceQuota"
    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec defines the desired quota. [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property spec : Kubernetes::Api::V1::ResourceQuotaSpec | Nil

    # Status defines the actual enforced quota and its current usage. [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property status : Kubernetes::Api::V1::ResourceQuotaStatus | Nil

    YAML.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "ResourceQuota", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata"},
      spec:        {type: Kubernetes::Api::V1::ResourceQuotaSpec, nilable: true, key: "spec"},
      status:      {type: Kubernetes::Api::V1::ResourceQuotaStatus, nilable: true, key: "status"},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "ResourceQuota", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata"},
      spec:        {type: Kubernetes::Api::V1::ResourceQuotaSpec, nilable: true, key: "spec"},
      status:      {type: Kubernetes::Api::V1::ResourceQuotaStatus, nilable: true, key: "status"},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Api::V1::ResourceQuotaSpec | Nil = nil, @status : Kubernetes::Api::V1::ResourceQuotaStatus | Nil = nil)
    end
  end

  module Resources::V1
    alias ResourceQuota = Kubernetes::Api::V1::ResourceQuota
  end
end
