# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CustomResourceDefinitionList is a list of CustomResourceDefinition objects.
  class ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionList
    getter api_version : String = "v1"
    getter kind : String = "List"
    # items list individual CustomResourceDefinition objects
    property items : Array(ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinition)

    property metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "List", key: "kind", setter: false},
      items:       {type: Array(ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinition), nilable: false, key: "items", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "List", key: "kind", setter: false},
      items:       {type: Array(ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinition), nilable: false, key: "items", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    def initialize(*, @items : Array, @metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil = nil)
    end

    # create a CustomResourceDefinition
    def create(spec : ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionSpec, metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, status : ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionStatus | Nil = nil, context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil)
    end

    # list or watch objects of kind CustomResourceDefinition
    def self.list(context : String | Nil = nil, allow_watch_bookmarks : Bool | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, resource_version_match : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # delete collection of CustomResourceDefinition
    def self.delete(context : String | Nil = nil, continue : String | Nil = nil, dry_run : String | Nil = nil, field_selector : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, orphan_dependents : Bool | Nil = nil, propagation_policy : String | Nil = nil, resource_version : String | Nil = nil, resource_version_match : String | Nil = nil, timeout_seconds : Int32 | Nil = nil)
    end
  end
end
