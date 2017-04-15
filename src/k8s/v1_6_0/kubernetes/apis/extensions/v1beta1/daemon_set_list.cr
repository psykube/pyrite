require "yaml"
require "json"

# DaemonSetList is a collection of daemon sets.
class K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::DaemonSetList
  # A list of daemon sets.
  property items : Array(::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::DaemonSet)

  # Standard list metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "DaemonSetList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::DaemonSet), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "DaemonSetList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::DaemonSet), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@items, @metadata = nil)
    @api_version = "DaemonSetList"
    @kind = "v1beta1"
  end

  # list or watch objects of kind DaemonSet
  def self.get
    Kubernetes.client.get
  end

  # list or watch objects of kind DaemonSet
  def self.get(namespace : String = "default")
    Kubernetes.client.get
  end

  # create a DaemonSet
  def self.create(metadata = nil, spec = nil, status = nil, namespace : String = "default")
  end
end
