# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # EventList is a list of events.
  class Api::Core::V1::EventList
    getter api_version : String = "v1"
    getter kind : String = "List"
    # List of events
    property items : Array(Api::Core::V1::Event)

    # Standard list metadata. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)
    property metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "List", key: "kind", setter: false},
      items:       {type: Array(Api::Core::V1::Event), nilable: false, key: "items", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "List", key: "kind", setter: false},
      items:       {type: Array(Api::Core::V1::Event), nilable: false, key: "items", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    def initialize(*, @items : Array, @metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil = nil)
    end

    # list or watch objects of kind Event
    def self.list_for_all_namespaces(context : String | Nil = nil, allow_watch_bookmarks : Bool | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, resource_version_match : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # create an Event
    def create(involved_object : Api::Core::V1::ObjectReference, metadata : Apimachinery::Apis::Meta::V1::ObjectMeta, action : String | Nil = nil, count : Int32 | Nil = nil, event_time : Time | Nil = nil, first_timestamp : Time | Nil = nil, last_timestamp : Time | Nil = nil, message : String | Nil = nil, reason : String | Nil = nil, related : Api::Core::V1::ObjectReference | Nil = nil, reporting_component : String | Nil = nil, reporting_instance : String | Nil = nil, series : Api::Core::V1::EventSeries | Nil = nil, source : Api::Core::V1::EventSource | Nil = nil, type : String | Nil = nil, context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil)
    end

    # list or watch objects of kind Event
    def self.list(context : String | Nil = nil, allow_watch_bookmarks : Bool | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, resource_version_match : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # delete collection of Event
    def self.delete(context : String | Nil = nil, continue : String | Nil = nil, dry_run : String | Nil = nil, field_selector : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, orphan_dependents : Bool | Nil = nil, propagation_policy : String | Nil = nil, resource_version : String | Nil = nil, resource_version_match : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, namespace : String = "default")
    end
  end
end
