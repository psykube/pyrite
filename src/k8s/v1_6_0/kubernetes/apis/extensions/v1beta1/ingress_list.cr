require "yaml"
require "json"

# IngressList is a collection of Ingress.
class K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::IngressList
  # Items is the list of Ingress.
  property items : Array(::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::Ingress)

  # Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "IngressList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::Ingress), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "IngressList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::Ingress), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@items, @metadata = nil)
    @api_version = "IngressList"
    @kind = "v1beta1"
  end

  # list or watch objects of kind Ingress
  def self.get
    Kubernetes.client.get
  end

  # list or watch objects of kind Ingress
  def self.get(namespace : String = "default")
    Kubernetes.client.get
  end

  # create an Ingress
  def self.create(metadata = nil, spec = nil, status = nil, namespace : String = "default")
  end
end
