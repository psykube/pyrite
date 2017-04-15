require "yaml"
require "json"

# Pod is a collection of containers that can run on a host.This resource is created by clients and scheduled onto hosts.
class K8S::V1_6_0::Kubernetes::Api::V1::Pod
  # Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Specification of the desired behavior of the pod.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
  property spec : ::K8S::V1_6_0::Kubernetes::Api::V1::PodSpec

  # Most recently observed status of the pod.This data may not be up to date.Populated by the system.Read-only.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
  property status : ::K8S::V1_6_0::Kubernetes::Api::V1::PodStatus

  YAML.mapping({
    api_version: {type: String, default: "Pod", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_0::Kubernetes::Api::V1::PodSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_0::Kubernetes::Api::V1::PodStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "Pod", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_0::Kubernetes::Api::V1::PodSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_0::Kubernetes::Api::V1::PodStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@metadata = nil, @spec = nil, @status = nil)
    @api_version = "Pod"
    @kind = "v1"
  end

  # list or watch objects of kind Pod
  def self.get(namespace : String = "default")
    Kubernetes.client.get
  end

  # create a Pod
  def self.create(metadata = nil, spec = nil, status = nil, namespace : String = "default")
  end

  # read the specified Pod
  def self.get(name : String, namespace : String = "default")
    Kubernetes.client.get
  end

  # read status of the specified Pod
  def self.get(name : String, namespace : String = "default")
    Kubernetes.client.get
  end
end
