require "yaml"
require "json"

# ReplicationController represents the configuration of a replication controller.
class K8S::V1_6_0::Kubernetes::Api::V1::ReplicationController
  # If the Labels of a ReplicationController are empty, they are defaulted to be the same as the Pod(s) that the replication controller manages.Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Spec defines the specification of the desired behavior of the replication controller.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
  property spec : ::K8S::V1_6_0::Kubernetes::Api::V1::ReplicationControllerSpec

  # Status is the most recently observed status of the replication controller.This data may be out of date by some window of time.Populated by the system.Read-only.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
  property status : ::K8S::V1_6_0::Kubernetes::Api::V1::ReplicationControllerStatus

  YAML.mapping({
    api_version: {type: String, default: "ReplicationController", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_0::Kubernetes::Api::V1::ReplicationControllerSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_0::Kubernetes::Api::V1::ReplicationControllerStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "ReplicationController", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_0::Kubernetes::Api::V1::ReplicationControllerSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_0::Kubernetes::Api::V1::ReplicationControllerStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@metadata = nil, @spec = nil, @status = nil)
    @api_version = "ReplicationController"
    @kind = "v1"
  end

  # list or watch objects of kind ReplicationController
  def self.get(namespace : String = "default")
    Kubernetes.client.get
  end

  # create a ReplicationController
  def self.create(metadata = nil, spec = nil, status = nil, namespace : String = "default")
  end

  # read the specified ReplicationController
  def self.get(name : String, namespace : String = "default")
    Kubernetes.client.get
  end

  # read status of the specified ReplicationController
  def self.get(name : String, namespace : String = "default")
    Kubernetes.client.get
  end
end
