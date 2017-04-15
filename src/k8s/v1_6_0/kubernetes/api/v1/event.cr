require "yaml"
require "json"

# Event is a report of an event somewhere in the cluster.
class K8S::V1_6_0::Kubernetes::Api::V1::Event
  # The number of times this event has occurred.
  property count : Int32?

  # The time at which the event was first recorded.(Time of server receipt is in TypeMeta.)
  property first_timestamp : ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::Time

  # The object that this event is about.
  property involved_object : ::K8S::V1_6_0::Kubernetes::Api::V1::ObjectReference

  # The time at which the most recent occurrence of this event was recorded.
  property last_timestamp : ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::Time

  # A human-readable description of the status of this operation.
  property message : String?

  # Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta

  # This should be a short, machine understandable string that gives the reason for the transition into the object's current status.
  property reason : String?

  # The component reporting this event.Should be a short machine understandable string.
  property source : ::K8S::V1_6_0::Kubernetes::Api::V1::EventSource

  # Type of this event (Normal, Warning), new types could be added in the future
  property type : String?

  YAML.mapping({
    api_version:     {type: String, default: "Event", key: apiVersion, getter: false, setter: false},
    kind:            {type: String, default: "v1", getter: false, setter: false},
    count:           {type: Int32, nilable: true, key: count, getter: false, setter: false},
    first_timestamp: {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::Time, nilable: true, key: firstTimestamp, getter: false, setter: false},
    involved_object: {type: ::K8S::V1_6_0::Kubernetes::Api::V1::ObjectReference, nilable: false, key: involvedObject, getter: false, setter: false},
    last_timestamp:  {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::Time, nilable: true, key: lastTimestamp, getter: false, setter: false},
    message:         {type: String, nilable: true, key: message, getter: false, setter: false},
    metadata:        {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: false, key: metadata, getter: false, setter: false},
    reason:          {type: String, nilable: true, key: reason, getter: false, setter: false},
    source:          {type: ::K8S::V1_6_0::Kubernetes::Api::V1::EventSource, nilable: true, key: source, getter: false, setter: false},
    type:            {type: String, nilable: true, key: type, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version:     {type: String, default: "Event", key: apiVersion, getter: false, setter: false},
    kind:            {type: String, default: "v1", getter: false, setter: false},
    count:           {type: Int32, nilable: true, key: count, getter: false, setter: false},
    first_timestamp: {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::Time, nilable: true, key: firstTimestamp, getter: false, setter: false},
    involved_object: {type: ::K8S::V1_6_0::Kubernetes::Api::V1::ObjectReference, nilable: false, key: involvedObject, getter: false, setter: false},
    last_timestamp:  {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::Time, nilable: true, key: lastTimestamp, getter: false, setter: false},
    message:         {type: String, nilable: true, key: message, getter: false, setter: false},
    metadata:        {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: false, key: metadata, getter: false, setter: false},
    reason:          {type: String, nilable: true, key: reason, getter: false, setter: false},
    source:          {type: ::K8S::V1_6_0::Kubernetes::Api::V1::EventSource, nilable: true, key: source, getter: false, setter: false},
    type:            {type: String, nilable: true, key: type, getter: false, setter: false},
  }, true)

  def initialize(@involved_object, @metadata, @count = nil, @first_timestamp = nil, @last_timestamp = nil, @message = nil, @reason = nil, @source = nil, @type = nil)
    @api_version = "Event"
    @kind = "v1"
  end

  # list or watch objects of kind Event
  def self.get(namespace : String = "default")
    Kubernetes.client.get
  end

  # create an Event
  def self.create(involved_object, metadata, count = nil, first_timestamp = nil, last_timestamp = nil, message = nil, reason = nil, source = nil, type = nil, namespace : String = "default")
  end

  # read the specified Event
  def self.get(name : String, namespace : String = "default")
    Kubernetes.client.get
  end
end
