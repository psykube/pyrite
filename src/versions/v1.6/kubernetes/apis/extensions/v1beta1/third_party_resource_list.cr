# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ThirdPartyResourceList is a list of ThirdPartyResources.
  class Kubernetes::Apis::Extensions::V1beta1::ThirdPartyResourceList
    getter api_version : String = "v1"
    getter kind : String = "List"
    # Items is the list of ThirdPartyResources.
    property items : Array(Kubernetes::Apis::Extensions::V1beta1::ThirdPartyResource)

    # Standard list metadata.
    property metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "List", key: "kind", setter: false},
      items:       {type: Array(Kubernetes::Apis::Extensions::V1beta1::ThirdPartyResource), nilable: false, key: "items", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "List", key: "kind", setter: false},
      items:       {type: Array(Kubernetes::Apis::Extensions::V1beta1::ThirdPartyResource), nilable: false, key: "items", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    def initialize(*, @items : Array, @metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil = nil)
    end

    # create a ThirdPartyResource
    def create(description : String | Nil = nil, metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, versions : Array | Nil = nil, context : String | Nil = nil)
    end

    # list or watch objects of kind ThirdPartyResource
    def self.list(context : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # delete collection of ThirdPartyResource
    def self.delete(context : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end
  end
end
