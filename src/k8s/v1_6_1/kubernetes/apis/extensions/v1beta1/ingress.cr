require "yaml"
require "json"

# Ingress is a collection of rules that allow inbound connections to reach the endpoints defined by a backend.An Ingress can be configured to give services externally-reachable urls, load balance traffic, terminate SSL, offer name based virtual hosting etc.
class K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::Ingress
  # Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Spec is the desired state of the Ingress.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
  property spec : ::K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::IngressSpec

  # Status is the current state of the Ingress.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
  property status : ::K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::IngressStatus

  YAML.mapping({
    api_version: {type: String, default: "Ingress", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::IngressSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::IngressStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "Ingress", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::IngressSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::IngressStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@metadata = nil, @spec = nil, @status = nil)
    @api_version = "Ingress"
    @kind = "v1beta1"
  end

  # list or watch objects of kind Ingress
  def self.get(namespace : String = "default")
    Kubernetes.client.get
  end

  # create an Ingress
  def self.create(metadata = nil, spec = nil, status = nil, namespace : String = "default")
  end

  # read the specified Ingress
  def self.get(name : String, namespace : String = "default")
    Kubernetes.client.get
  end

  # read status of the specified Ingress
  def self.get(name : String, namespace : String = "default")
    Kubernetes.client.get
  end
end
