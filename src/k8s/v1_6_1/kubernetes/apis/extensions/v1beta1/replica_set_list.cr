require "yaml"
require "json"

# ReplicaSetList is a collection of ReplicaSets.
class K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::ReplicaSetList
  # List of ReplicaSets.More info: http://kubernetes.io/docs/user-guide/replication-controller
  property items : Array(::K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::ReplicaSet)

  # Standard list metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds
  property metadata : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "ReplicaSetList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::ReplicaSet), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "ReplicaSetList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::ReplicaSet), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@items, @metadata = nil)
    @api_version = "ReplicaSetList"
    @kind = "v1beta1"
  end

  # list or watch objects of kind ReplicaSet
  def self.get(namespace : String = "default")
    Kubernetes.client.get
  end

  # create a ReplicaSet
  def self.create(metadata = nil, spec = nil, status = nil, namespace : String = "default")
  end

  # list or watch objects of kind ReplicaSet
  def self.get
    Kubernetes.client.get
  end
end
