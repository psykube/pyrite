# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_7
  # Event is a report of an event somewhere in the cluster.
  class Definitions::V1::Event
    # The number of times this event has occurred.
    property count : Int32?

    # The time at which the event was first recorded. (Time of server receipt is in TypeMeta.)
    property first_timestamp : Unversioned::Time

    # The object that this event is about.
    property involved_object : V1::ObjectReference

    # The time at which the most recent occurrence of this event was recorded.
    property last_timestamp : Unversioned::Time

    # A human-readable description of the status of this operation.
    property message : String?

    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : V1::ObjectMeta

    # This should be a short, machine understandable string that gives the reason for the transition into the object's current status.
    property reason : String?

    # The component reporting this event. Should be a short machine understandable string.
    property source : V1::EventSource

    # Type of this event (Normal, Warning), new types could be added in the future
    property type : String?

    YAML.mapping({
      api_version:     {type: String, default: "Event", key: apiVersion, getter: false, setter: false},
      kind:            {type: String, default: "v1", getter: false, setter: false},
      count:           {type: Int32, nilable: true, key: count, getter: false, setter: false},
      first_timestamp: {type: Unversioned::Time, nilable: true, key: firstTimestamp, getter: false, setter: false},
      involved_object: {type: V1::ObjectReference, nilable: false, key: involvedObject, getter: false, setter: false},
      last_timestamp:  {type: Unversioned::Time, nilable: true, key: lastTimestamp, getter: false, setter: false},
      message:         {type: String, nilable: true, key: message, getter: false, setter: false},
      metadata:        {type: V1::ObjectMeta, nilable: false, key: metadata, getter: false, setter: false},
      reason:          {type: String, nilable: true, key: reason, getter: false, setter: false},
      source:          {type: V1::EventSource, nilable: true, key: source, getter: false, setter: false},
      type:            {type: String, nilable: true, key: type, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version:     {type: String, default: "Event", key: apiVersion, getter: false, setter: false},
      kind:            {type: String, default: "v1", getter: false, setter: false},
      count:           {type: Int32, nilable: true, key: count, getter: false, setter: false},
      first_timestamp: {type: Unversioned::Time, nilable: true, key: firstTimestamp, getter: false, setter: false},
      involved_object: {type: V1::ObjectReference, nilable: false, key: involvedObject, getter: false, setter: false},
      last_timestamp:  {type: Unversioned::Time, nilable: true, key: lastTimestamp, getter: false, setter: false},
      message:         {type: String, nilable: true, key: message, getter: false, setter: false},
      metadata:        {type: V1::ObjectMeta, nilable: false, key: metadata, getter: false, setter: false},
      reason:          {type: String, nilable: true, key: reason, getter: false, setter: false},
      source:          {type: V1::EventSource, nilable: true, key: source, getter: false, setter: false},
      type:            {type: String, nilable: true, key: type, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @count : Int32? = nil, @first_timestamp : Unversioned::Time = nil, @involved_object : V1::ObjectReference = nil, @kind : String? = nil, @last_timestamp : Unversioned::Time = nil, @message : String? = nil, @metadata : V1::ObjectMeta = nil, @reason : String? = nil, @source : V1::EventSource = nil, @type : String? = nil)
      @api_version = "v1"
      @kind = "Event"
    end
  end

  module Resources::V1
    include Resource
    alias Event = Definitions::V1::Event
  end
end
