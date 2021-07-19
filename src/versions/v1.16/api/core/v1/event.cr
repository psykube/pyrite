# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Event is a report of an event somewhere in the cluster.
  class Api::Core::V1::Event < Kubernetes::Object
    @api_version = "v1"
    @kind = "Event"

    def self.new(pull : ::JSON::PullParser)
      super(pull).tap do |instance|
        unless instance.api_version == "v1" && instance.kind == "Event"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      super(ctx, node).tap do |instance|
        unless instance.api_version == "v1" && instance.kind == "Event"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    # What action was [taken/failed regarding to the Regarding object.](taken/failed regarding to the Regarding object.)
    @[::JSON::Field(key: "action")]
    @[::YAML::Field(key: "action")]
    property action : String | Nil

    # The number of times this event has occurred.
    @[::JSON::Field(key: "count")]
    @[::YAML::Field(key: "count")]
    property count : Int32 | Nil

    # Time when this Event was first observed.
    @[::JSON::Field(key: "eventTime")]
    @[::YAML::Field(key: "eventTime")]
    property event_time : Time | Nil

    # The time at which the event was first recorded. (Time of server receipt is in TypeMeta.)
    @[::JSON::Field(key: "firstTimestamp")]
    @[::YAML::Field(key: "firstTimestamp")]
    property first_timestamp : Time | Nil

    # The object that this event is about.
    @[::JSON::Field(key: "involvedObject")]
    @[::YAML::Field(key: "involvedObject")]
    property involved_object : Api::Core::V1::ObjectReference

    # The time at which the most recent occurrence of this event was recorded.
    @[::JSON::Field(key: "lastTimestamp")]
    @[::YAML::Field(key: "lastTimestamp")]
    property last_timestamp : Time | Nil

    # A human-readable description of the status of this operation.
    @[::JSON::Field(key: "message")]
    @[::YAML::Field(key: "message")]
    property message : String | Nil

    # This should be a short, machine understandable string that gives the reason for the transition into the object's current status.
    @[::JSON::Field(key: "reason")]
    @[::YAML::Field(key: "reason")]
    property reason : String | Nil

    # Optional secondary object for more complex actions.
    @[::JSON::Field(key: "related")]
    @[::YAML::Field(key: "related")]
    property related : Api::Core::V1::ObjectReference | Nil

    # Name of the controller that emitted this Event, e.g. [`kubernetes.io/kubelet`.](`kubernetes.io/kubelet`.)
    @[::JSON::Field(key: "reportingComponent")]
    @[::YAML::Field(key: "reportingComponent")]
    property reporting_component : String | Nil

    # ID of the controller instance, e.g. `kubelet-xyzf`.
    @[::JSON::Field(key: "reportingInstance")]
    @[::YAML::Field(key: "reportingInstance")]
    property reporting_instance : String | Nil

    # Data about the Event series this event represents or nil if it's a singleton Event.
    @[::JSON::Field(key: "series")]
    @[::YAML::Field(key: "series")]
    property series : Api::Core::V1::EventSeries | Nil

    # The component reporting this event. Should be a short machine understandable string.
    @[::JSON::Field(key: "source")]
    @[::YAML::Field(key: "source")]
    property source : Api::Core::V1::EventSource | Nil

    # Type of this event (Normal, Warning), new types could be added in the future
    @[::JSON::Field(key: "type")]
    @[::YAML::Field(key: "type")]
    property type : String | Nil

    def initialize(*, @action : String | Nil = nil, @count : Int32 | Nil = nil, @event_time : Time | Nil = nil, @first_timestamp : Time | Nil = nil, @involved_object : Api::Core::V1::ObjectReference, @last_timestamp : Time | Nil = nil, @message : String | Nil = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta, @reason : String | Nil = nil, @related : Api::Core::V1::ObjectReference | Nil = nil, @reporting_component : String | Nil = nil, @reporting_instance : String | Nil = nil, @series : Api::Core::V1::EventSeries | Nil = nil, @source : Api::Core::V1::EventSource | Nil = nil, @type : String | Nil = nil)
    end
  end
end
