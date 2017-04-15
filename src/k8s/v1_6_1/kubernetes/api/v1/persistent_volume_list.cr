require "yaml"
require "json"

# PersistentVolumeList is a list of PersistentVolume items.
class K8S::V1_6_1::Kubernetes::Api::V1::PersistentVolumeList
  # List of persistent volumes.More info: http://kubernetes.io/docs/user-guide/persistent-volumes
  property items : Array(::K8S::V1_6_1::Kubernetes::Api::V1::PersistentVolume)

  # Standard list metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds
  property metadata : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "PersistentVolumeList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_1::Kubernetes::Api::V1::PersistentVolume), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "PersistentVolumeList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_1::Kubernetes::Api::V1::PersistentVolume), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@items, @metadata = nil)
    @api_version = "PersistentVolumeList"
    @kind = "v1"
  end

  # list or watch objects of kind PersistentVolume
  def self.get
    Kubernetes.client.get
  end

  # create a PersistentVolume
  def self.create(metadata = nil, spec = nil, status = nil)
  end
end
