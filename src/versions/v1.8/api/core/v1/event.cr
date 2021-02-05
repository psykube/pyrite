# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Event is a report of an event somewhere in the cluster.
  class Api::Core::V1::Event
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[JSON::Field(key: "apiVersion")]
    @[YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String = "v1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "Event"
    # The number of times this event has occurred.
    @[JSON::Field(key: "count")]
    @[YAML::Field(key: "count")]
    property count : Int32 | Nil

    # The time at which the event was first recorded. (Time of server receipt is in TypeMeta.)
    @[JSON::Field(key: "firstTimestamp")]
    @[YAML::Field(key: "firstTimestamp")]
    property first_timestamp : Time | Nil

    # The object that this event is about.
    @[JSON::Field(key: "involvedObject")]
    @[YAML::Field(key: "involvedObject")]
    property involved_object : Api::Core::V1::ObjectReference

    # The time at which the most recent occurrence of this event was recorded.
    @[JSON::Field(key: "lastTimestamp")]
    @[YAML::Field(key: "lastTimestamp")]
    property last_timestamp : Time | Nil

    # A human-readable description of the status of this operation.
    @[JSON::Field(key: "message")]
    @[YAML::Field(key: "message")]
    property message : String | Nil

    # Standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    @[JSON::Field(key: "metadata")]
    @[YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta

    # This should be a short, machine understandable string that gives the reason for the transition into the object's current status.
    @[JSON::Field(key: "reason")]
    @[YAML::Field(key: "reason")]
    property reason : String | Nil

    # The component reporting this event. Should be a short machine understandable string.
    @[JSON::Field(key: "source")]
    @[YAML::Field(key: "source")]
    property source : Api::Core::V1::EventSource | Nil

    # Type of this event (Normal, Warning), new types could be added in the future
    @[JSON::Field(key: "type")]
    @[YAML::Field(key: "type")]
    property type : String | Nil

    def initialize(*, @count : Int32 | Nil = nil, @first_timestamp : Time | Nil = nil, @involved_object : Api::Core::V1::ObjectReference, @last_timestamp : Time | Nil = nil, @message : String | Nil = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta, @reason : String | Nil = nil, @source : Api::Core::V1::EventSource | Nil = nil, @type : String | Nil = nil)
    end
  end

  module Resources::V1
    alias Event = ::Pyrite::Api::Core::V1::Event
  end
end
