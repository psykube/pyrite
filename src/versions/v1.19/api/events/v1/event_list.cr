# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # EventList is a list of Event objects.
  class Api::Events::V1::EventList
    getter api_version : String = "v1"
    getter kind : String = "List"
    # items is a list of schema objects.
    property items : Array(Api::Events::V1::Event)

    # Standard list metadata. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "List", key: "kind", setter: false},
      items:       {type: Array(Api::Events::V1::Event), nilable: false, key: "items", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "List", key: "kind", setter: false},
      items:       {type: Array(Api::Events::V1::Event), nilable: false, key: "items", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    def initialize(*, @items : Array, @metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil = nil)
    end

    # list or watch objects of kind Event
    def self.list_for_all_namespaces(context : String | Nil = nil, allow_watch_bookmarks : Bool | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, resource_version_match : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # create an Event
    def create(event_time : Time, action : String | Nil = nil, deprecated_count : Int32 | Nil = nil, deprecated_first_timestamp : Time | Nil = nil, deprecated_last_timestamp : Time | Nil = nil, deprecated_source : Api::Core::V1::EventSource | Nil = nil, metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, note : String | Nil = nil, reason : String | Nil = nil, regarding : Api::Core::V1::ObjectReference | Nil = nil, related : Api::Core::V1::ObjectReference | Nil = nil, reporting_controller : String | Nil = nil, reporting_instance : String | Nil = nil, series : Api::Events::V1::EventSeries | Nil = nil, type : String | Nil = nil, context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil)
    end

    # list or watch objects of kind Event
    def self.list(context : String | Nil = nil, allow_watch_bookmarks : Bool | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, resource_version_match : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # delete collection of Event
    def self.delete(context : String | Nil = nil, continue : String | Nil = nil, dry_run : String | Nil = nil, field_selector : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, orphan_dependents : Bool | Nil = nil, propagation_policy : String | Nil = nil, resource_version : String | Nil = nil, resource_version_match : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, namespace : String = "default")
    end
  end
end
