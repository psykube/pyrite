# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ResourceQuotaList is a list of ResourceQuota items.
  class Kubernetes::Api::V1::ResourceQuotaList
    getter api_version : String = "v1"
    getter kind : String = "List"
    # Items is a list of ResourceQuota objects. More info: [https://git.k8s.io/community/contributors/design-proposals/admission_control_resource_quota.md](https://git.k8s.io/community/contributors/design-proposals/admission_control_resource_quota.md)
    property items : Array(Kubernetes::Api::V1::ResourceQuota)

    # Standard list metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds)
    property metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil

    YAML.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "List", key: "kind", setter: false},
      items:       {type: Array(Kubernetes::Api::V1::ResourceQuota), nilable: false, key: "items", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "List", key: "kind", setter: false},
      items:       {type: Array(Kubernetes::Api::V1::ResourceQuota), nilable: false, key: "items", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    def initialize(*, @items : Array | Nil = nil, @metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil = nil)
    end
  end
end
