# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Event is a report of an event somewhere in the cluster. It generally denotes some state change in the system.
  class Api::Events::V1beta1::Event < Kubernetes::Object
    @api_version = "events/v1beta1"
    @kind = "Event"

    def self.new(pull : ::JSON::PullParser)
      super(pull).tap do |instance|
        unless instance.api_version == "events/v1beta1" && instance.kind == "Event"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      super(ctx, node).tap do |instance|
        unless instance.api_version == "events/v1beta1" && instance.kind == "Event"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    # What action was [taken/failed regarding to the regarding object.](taken/failed regarding to the regarding object.)
    @[::JSON::Field(key: "action")]
    @[::YAML::Field(key: "action")]
    property action : String | Nil

    # Deprecated field assuring backward compatibility with core.v1 Event type
    @[::JSON::Field(key: "deprecatedCount")]
    @[::YAML::Field(key: "deprecatedCount")]
    property deprecated_count : Int32 | Nil

    # Deprecated field assuring backward compatibility with core.v1 Event type
    @[::JSON::Field(key: "deprecatedFirstTimestamp")]
    @[::YAML::Field(key: "deprecatedFirstTimestamp")]
    property deprecated_first_timestamp : Time | Nil

    # Deprecated field assuring backward compatibility with core.v1 Event type
    @[::JSON::Field(key: "deprecatedLastTimestamp")]
    @[::YAML::Field(key: "deprecatedLastTimestamp")]
    property deprecated_last_timestamp : Time | Nil

    # Deprecated field assuring backward compatibility with core.v1 Event type
    @[::JSON::Field(key: "deprecatedSource")]
    @[::YAML::Field(key: "deprecatedSource")]
    property deprecated_source : Api::Core::V1::EventSource | Nil

    # Required. Time when this Event was first observed.
    @[::JSON::Field(key: "eventTime")]
    @[::YAML::Field(key: "eventTime")]
    property event_time : Time

    # Optional. A human-readable description of the status of this operation. Maximal length of the note is 1kB, but libraries should be prepared to handle values up to 64kB.
    @[::JSON::Field(key: "note")]
    @[::YAML::Field(key: "note")]
    property note : String | Nil

    # Why the action was taken.
    @[::JSON::Field(key: "reason")]
    @[::YAML::Field(key: "reason")]
    property reason : String | Nil

    # The object this Event is about. In most cases it's an Object reporting controller implements. E.g. ReplicaSetController implements ReplicaSets and this event is emitted because it acts on some changes in a ReplicaSet object.
    @[::JSON::Field(key: "regarding")]
    @[::YAML::Field(key: "regarding")]
    property regarding : Api::Core::V1::ObjectReference | Nil

    # Optional secondary object for more complex actions. E.g. when regarding object triggers a creation or deletion of related object.
    @[::JSON::Field(key: "related")]
    @[::YAML::Field(key: "related")]
    property related : Api::Core::V1::ObjectReference | Nil

    # Name of the controller that emitted this Event, e.g. [`kubernetes.io/kubelet`.](`kubernetes.io/kubelet`.)
    @[::JSON::Field(key: "reportingController")]
    @[::YAML::Field(key: "reportingController")]
    property reporting_controller : String | Nil

    # ID of the controller instance, e.g. `kubelet-xyzf`.
    @[::JSON::Field(key: "reportingInstance")]
    @[::YAML::Field(key: "reportingInstance")]
    property reporting_instance : String | Nil

    # Data about the Event series this event represents or nil if it's a singleton Event.
    @[::JSON::Field(key: "series")]
    @[::YAML::Field(key: "series")]
    property series : Api::Events::V1beta1::EventSeries | Nil

    # Type of this event (Normal, Warning), new types could be added in the future.
    @[::JSON::Field(key: "type")]
    @[::YAML::Field(key: "type")]
    property type : String | Nil

    def initialize(*, @action : String | Nil = nil, @deprecated_count : Int32 | Nil = nil, @deprecated_first_timestamp : Time | Nil = nil, @deprecated_last_timestamp : Time | Nil = nil, @deprecated_source : Api::Core::V1::EventSource | Nil = nil, @event_time : Time, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @note : String | Nil = nil, @reason : String | Nil = nil, @regarding : Api::Core::V1::ObjectReference | Nil = nil, @related : Api::Core::V1::ObjectReference | Nil = nil, @reporting_controller : String | Nil = nil, @reporting_instance : String | Nil = nil, @series : Api::Events::V1beta1::EventSeries | Nil = nil, @type : String | Nil = nil)
    end
  end
end
