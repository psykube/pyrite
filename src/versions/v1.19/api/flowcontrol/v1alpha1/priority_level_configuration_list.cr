# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PriorityLevelConfigurationList is a list of PriorityLevelConfiguration objects.
  class Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationList
    getter api_version : String = "v1"
    getter kind : String = "List"
    # `items` is a list of request-priorities.
    property items : Array(Api::Flowcontrol::V1alpha1::PriorityLevelConfiguration)

    # `metadata` is the standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "List", key: "kind", setter: false},
      items:       {type: Array(Api::Flowcontrol::V1alpha1::PriorityLevelConfiguration), nilable: false, key: "items", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "List", key: "kind", setter: false},
      items:       {type: Array(Api::Flowcontrol::V1alpha1::PriorityLevelConfiguration), nilable: false, key: "items", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    def initialize(*, @items : Array, @metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil = nil)
    end

    # create a PriorityLevelConfiguration
    def create_flowcontrol_apiserver_v1alpha1_priority_level_configuration(metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, spec : Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationSpec | Nil = nil, status : Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationStatus | Nil = nil, context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil)
    end

    # list or watch objects of kind PriorityLevelConfiguration
    def self.list_flowcontrol_apiserver_v1alpha1_priority_level_configuration(context : String | Nil = nil, allow_watch_bookmarks : Bool | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, resource_version_match : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # delete collection of PriorityLevelConfiguration
    def self.delete_flowcontrol_apiserver_v1alpha1_priority_level_configuration(context : String | Nil = nil, continue : String | Nil = nil, dry_run : String | Nil = nil, field_selector : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, orphan_dependents : Bool | Nil = nil, propagation_policy : String | Nil = nil, resource_version : String | Nil = nil, resource_version_match : String | Nil = nil, timeout_seconds : Int32 | Nil = nil)
    end
  end
end
