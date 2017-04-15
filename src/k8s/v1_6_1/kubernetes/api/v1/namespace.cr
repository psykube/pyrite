require "yaml"
require "json"

# Namespace provides a scope for Names.Use of multiple namespaces is optional.
class K8S::V1_6_1::Kubernetes::Api::V1::Namespace
  # Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Spec defines the behavior of the Namespace.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
  property spec : ::K8S::V1_6_1::Kubernetes::Api::V1::NamespaceSpec

  # Status describes the current status of a Namespace.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
  property status : ::K8S::V1_6_1::Kubernetes::Api::V1::NamespaceStatus

  YAML.mapping({
    api_version: {type: String, default: "Namespace", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_1::Kubernetes::Api::V1::NamespaceSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_1::Kubernetes::Api::V1::NamespaceStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "Namespace", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_1::Kubernetes::Api::V1::NamespaceSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_1::Kubernetes::Api::V1::NamespaceStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@metadata = nil, @spec = nil, @status = nil)
    @api_version = "Namespace"
    @kind = "v1"
  end

  # list or watch objects of kind Namespace
  def self.get
    Kubernetes.client.get
  end

  # create a Namespace
  def self.create(metadata = nil, spec = nil, status = nil)
  end

  # read the specified Namespace
  def self.get(name : String)
    Kubernetes.client.get
  end

  # read status of the specified Namespace
  def self.get(name : String)
    Kubernetes.client.get
  end
end
