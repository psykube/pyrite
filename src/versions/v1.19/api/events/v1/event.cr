# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Event is a report of an event somewhere in the cluster. It generally denotes some state change in the system.
  class Api::Events::V1::Event
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String = "events/v1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "Event"

    def self.new(pull : ::JSON::PullParser)
      previous_def(pull).tap do |instance|
        unless instance.api_version == "events/v1" && instance.kind == "Event"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      previous_def(ctx, node).tap do |instance|
        unless instance.api_version == "events/v1" && instance.kind == "Event"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    # action is what action was [taken/failed regarding to the regarding object. It is machine-readable. This field can have at most 128 characters.](taken/failed regarding to the regarding object. It is machine-readable. This field can have at most 128 characters.)
    @[::JSON::Field(key: "action")]
    @[::YAML::Field(key: "action")]
    property action : String | Nil

    # deprecatedCount is the deprecated field assuring backward compatibility with core.v1 Event type.
    @[::JSON::Field(key: "deprecatedCount")]
    @[::YAML::Field(key: "deprecatedCount")]
    property deprecated_count : Int32 | Nil

    # deprecatedFirstTimestamp is the deprecated field assuring backward compatibility with core.v1 Event type.
    @[::JSON::Field(key: "deprecatedFirstTimestamp")]
    @[::YAML::Field(key: "deprecatedFirstTimestamp")]
    property deprecated_first_timestamp : Time | Nil

    # deprecatedLastTimestamp is the deprecated field assuring backward compatibility with core.v1 Event type.
    @[::JSON::Field(key: "deprecatedLastTimestamp")]
    @[::YAML::Field(key: "deprecatedLastTimestamp")]
    property deprecated_last_timestamp : Time | Nil

    # deprecatedSource is the deprecated field assuring backward compatibility with core.v1 Event type.
    @[::JSON::Field(key: "deprecatedSource")]
    @[::YAML::Field(key: "deprecatedSource")]
    property deprecated_source : Api::Core::V1::EventSource | Nil

    # eventTime is the time when this Event was first observed. It is required.
    @[::JSON::Field(key: "eventTime")]
    @[::YAML::Field(key: "eventTime")]
    property event_time : Time

    @[::JSON::Field(key: "metadata")]
    @[::YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # note is a human-readable description of the status of this operation. Maximal length of the note is 1kB, but libraries should be prepared to handle values up to 64kB.
    @[::JSON::Field(key: "note")]
    @[::YAML::Field(key: "note")]
    property note : String | Nil

    # reason is why the action was taken. It is human-readable. This field can have at most 128 characters.
    @[::JSON::Field(key: "reason")]
    @[::YAML::Field(key: "reason")]
    property reason : String | Nil

    # regarding contains the object this Event is about. In most cases it's an Object reporting controller implements, e.g. ReplicaSetController implements ReplicaSets and this event is emitted because it acts on some changes in a ReplicaSet object.
    @[::JSON::Field(key: "regarding")]
    @[::YAML::Field(key: "regarding")]
    property regarding : Api::Core::V1::ObjectReference | Nil

    # related is the optional secondary object for more complex actions. E.g. when regarding object triggers a creation or deletion of related object.
    @[::JSON::Field(key: "related")]
    @[::YAML::Field(key: "related")]
    property related : Api::Core::V1::ObjectReference | Nil

    # reportingController is the name of the controller that emitted this Event, e.g. [`kubernetes.io/kubelet`. This field cannot be empty for new Events.](`kubernetes.io/kubelet`. This field cannot be empty for new Events.)
    @[::JSON::Field(key: "reportingController")]
    @[::YAML::Field(key: "reportingController")]
    property reporting_controller : String | Nil

    # reportingInstance is the ID of the controller instance, e.g. `kubelet-xyzf`. This field cannot be empty for new Events and it can have at most 128 characters.
    @[::JSON::Field(key: "reportingInstance")]
    @[::YAML::Field(key: "reportingInstance")]
    property reporting_instance : String | Nil

    # series is data about the Event series this event represents or nil if it's a singleton Event.
    @[::JSON::Field(key: "series")]
    @[::YAML::Field(key: "series")]
    property series : Api::Events::V1::EventSeries | Nil

    # type is the type of this event (Normal, Warning), new types could be added in the future. It is machine-readable.
    @[::JSON::Field(key: "type")]
    @[::YAML::Field(key: "type")]
    property type : String | Nil

    def initialize(*, @action : String | Nil = nil, @deprecated_count : Int32 | Nil = nil, @deprecated_first_timestamp : Time | Nil = nil, @deprecated_last_timestamp : Time | Nil = nil, @deprecated_source : Api::Core::V1::EventSource | Nil = nil, @event_time : Time, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @note : String | Nil = nil, @reason : String | Nil = nil, @regarding : Api::Core::V1::ObjectReference | Nil = nil, @related : Api::Core::V1::ObjectReference | Nil = nil, @reporting_controller : String | Nil = nil, @reporting_instance : String | Nil = nil, @series : Api::Events::V1::EventSeries | Nil = nil, @type : String | Nil = nil)
    end
  end

  module Resources::Events::V1
    alias Event = ::Pyrite::Api::Events::V1::Event
  end
end
