require "yaml"
require "json"

# Service is a named abstraction of software service (for example, mysql) consisting of local port (for example 3306) that the proxy listens on, and the selector that determines which pods will answer requests sent through the proxy.
class K8S::V1_6_1::Kubernetes::Api::V1::Service
  # Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Spec defines the behavior of a service.http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
  property spec : ::K8S::V1_6_1::Kubernetes::Api::V1::ServiceSpec

  # Most recently observed status of the service.Populated by the system.Read-only.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
  property status : ::K8S::V1_6_1::Kubernetes::Api::V1::ServiceStatus

  YAML.mapping({
    api_version: {type: String, default: "Service", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_1::Kubernetes::Api::V1::ServiceSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_1::Kubernetes::Api::V1::ServiceStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "Service", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_1::Kubernetes::Api::V1::ServiceSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_1::Kubernetes::Api::V1::ServiceStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@metadata = nil, @spec = nil, @status = nil)
    @api_version = "Service"
    @kind = "v1"
  end

  # list or watch objects of kind Service
  def self.get(namespace : String = "default")
    Kubernetes.client.get
  end

  # create a Service
  def self.create(metadata = nil, spec = nil, status = nil, namespace : String = "default")
  end

  # read the specified Service
  def self.get(name : String, namespace : String = "default")
    Kubernetes.client.get
  end

  # read status of the specified Service
  def self.get(name : String, namespace : String = "default")
    Kubernetes.client.get
  end
end
