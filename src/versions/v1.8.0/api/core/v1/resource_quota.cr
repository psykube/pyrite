# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ResourceQuota sets aggregate quota restrictions enforced per namespace
  class Api::Core::V1::ResourceQuota
    getter api_version : String = "io/k8s/api/core/v1"
    getter kind : String = "ResourceQuota"
    # Standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec defines the desired quota. [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    property spec : Api::Core::V1::ResourceQuotaSpec | Nil

    # Status defines the actual enforced quota and its current usage. [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    property status : Api::Core::V1::ResourceQuotaStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "io/k8s/api/core/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "ResourceQuota", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Core::V1::ResourceQuotaSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Core::V1::ResourceQuotaStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "io/k8s/api/core/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "ResourceQuota", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Core::V1::ResourceQuotaSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Core::V1::ResourceQuotaStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Core::V1::ResourceQuotaSpec | Nil = nil, @status : Api::Core::V1::ResourceQuotaStatus | Nil = nil)
    end
  end

  module Resources::Io::K8s::Api::Core::V1
    alias ResourceQuota = ::Pyrite::Api::Core::V1::ResourceQuota
  end
end
