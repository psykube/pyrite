require "yaml"
require "json"

# DaemonSet represents the configuration of a daemon set.
class K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::DaemonSet
  # Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta

  # The desired behavior of this daemon set.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
  property spec : ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::DaemonSetSpec

  # The current status of this daemon set.This data may be out of date by some window of time.Populated by the system.Read-only.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
  property status : ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::DaemonSetStatus

  YAML.mapping({
    api_version: {type: String, default: "DaemonSet", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::DaemonSetSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::DaemonSetStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "DaemonSet", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::DaemonSetSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::DaemonSetStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@metadata = nil, @spec = nil, @status = nil)
    @api_version = "DaemonSet"
    @kind = "v1beta1"
  end

  # list or watch objects of kind DaemonSet
  def self.get(namespace : String = "default")
    Kubernetes.client.get
  end

  # create a DaemonSet
  def self.create(metadata = nil, spec = nil, status = nil, namespace : String = "default")
  end

  # read the specified DaemonSet
  def self.get(name : String, namespace : String = "default")
    Kubernetes.client.get
  end

  # read status of the specified DaemonSet
  def self.get(name : String, namespace : String = "default")
    Kubernetes.client.get
  end
end
