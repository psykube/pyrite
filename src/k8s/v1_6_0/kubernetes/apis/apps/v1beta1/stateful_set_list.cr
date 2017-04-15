require "yaml"
require "json"

# StatefulSetList is a collection of StatefulSets.
class K8S::V1_6_0::Kubernetes::Apis::Apps::V1beta1::StatefulSetList
  property items : Array(::K8S::V1_6_0::Kubernetes::Apis::Apps::V1beta1::StatefulSet)

  property metadata : ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "StatefulSetList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_0::Kubernetes::Apis::Apps::V1beta1::StatefulSet), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "StatefulSetList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_0::Kubernetes::Apis::Apps::V1beta1::StatefulSet), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@items, @metadata = nil)
    @api_version = "StatefulSetList"
    @kind = "v1beta1"
  end

  # list or watch objects of kind StatefulSet
  def self.get(namespace : String = "default")
    Kubernetes.client.get
  end

  # create a StatefulSet
  def self.create(metadata = nil, spec = nil, status = nil, namespace : String = "default")
  end

  # list or watch objects of kind StatefulSet
  def self.get
    Kubernetes.client.get
  end
end
