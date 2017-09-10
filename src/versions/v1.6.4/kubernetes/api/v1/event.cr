# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Event is a report of an event somewhere in the cluster.
  class Kubernetes::Api::V1::Event
    getter api_version : String = "v1"
    getter kind : String = "Event"
    # The number of times this event has occurred.
    property count : Int32 | Nil

    # The time at which the event was first recorded. (Time of server receipt is in TypeMeta.)
    property first_timestamp : Time | Nil

    # The object that this event is about.
    property involved_object : Kubernetes::Api::V1::ObjectReference

    # The time at which the most recent occurrence of this event was recorded.
    property last_timestamp : Time | Nil

    # A human-readable description of the status of this operation.
    property message : String | Nil

    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta

    # This should be a short, machine understandable string that gives the reason for the transition into the object's current status.
    property reason : String | Nil

    # The component reporting this event. Should be a short machine understandable string.
    property source : Kubernetes::Api::V1::EventSource | Nil

    # Type of this event (Normal, Warning), new types could be added in the future
    property type : String | Nil

    YAML.mapping({
      api_version:     {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:            {type: String, default: "Event", key: "kind", setter: false},
      count:           {type: Int32, nilable: true, key: "count"},
      first_timestamp: {type: Time, nilable: true, key: "firstTimestamp"},
      involved_object: {type: Kubernetes::Api::V1::ObjectReference, nilable: false, key: "involvedObject"},
      last_timestamp:  {type: Time, nilable: true, key: "lastTimestamp"},
      message:         {type: String, nilable: true, key: "message"},
      metadata:        {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: false, key: "metadata"},
      reason:          {type: String, nilable: true, key: "reason"},
      source:          {type: Kubernetes::Api::V1::EventSource, nilable: true, key: "source"},
      type:            {type: String, nilable: true, key: "type"},
    }, true)

    JSON.mapping({
      api_version:     {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:            {type: String, default: "Event", key: "kind", setter: false},
      count:           {type: Int32, nilable: true, key: "count"},
      first_timestamp: {type: Time, nilable: true, key: "firstTimestamp"},
      involved_object: {type: Kubernetes::Api::V1::ObjectReference, nilable: false, key: "involvedObject"},
      last_timestamp:  {type: Time, nilable: true, key: "lastTimestamp"},
      message:         {type: String, nilable: true, key: "message"},
      metadata:        {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: false, key: "metadata"},
      reason:          {type: String, nilable: true, key: "reason"},
      source:          {type: Kubernetes::Api::V1::EventSource, nilable: true, key: "source"},
      type:            {type: String, nilable: true, key: "type"},
    }, true)

    def initialize(*, @count : Int32 | Nil = nil, @first_timestamp : Time | Nil = nil, @involved_object : Kubernetes::Api::V1::ObjectReference | Nil = nil, @last_timestamp : Time | Nil = nil, @message : String | Nil = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @reason : String | Nil = nil, @source : Kubernetes::Api::V1::EventSource | Nil = nil, @type : String | Nil = nil)
    end
  end

  module Resources::V1
    alias Event = Kubernetes::Api::V1::Event
  end
end
