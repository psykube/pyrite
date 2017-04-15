require "yaml"
require "json"

# EventList is a list of events.
class K8S::V1_6_0::Kubernetes::Api::V1::EventList
  # List of events
  property items : Array(::K8S::V1_6_0::Kubernetes::Api::V1::Event)

  # Standard list metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds
  property metadata : ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "EventList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_0::Kubernetes::Api::V1::Event), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "EventList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_0::Kubernetes::Api::V1::Event), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@items, @metadata = nil)
    @api_version = "EventList"
    @kind = "v1"
  end

  # list or watch objects of kind Event
  def self.get
    Kubernetes.client.get
  end

  # list or watch objects of kind Event
  def self.get(namespace : String = "default")
    Kubernetes.client.get
  end

  # create an Event
  def self.create(involved_object, metadata, count = nil, first_timestamp = nil, last_timestamp = nil, message = nil, reason = nil, source = nil, type = nil, namespace : String = "default")
  end
end
