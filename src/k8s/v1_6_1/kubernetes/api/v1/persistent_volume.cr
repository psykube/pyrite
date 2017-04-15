require "yaml"
require "json"

# PersistentVolume (PV) is a storage resource provisioned by an administrator.It is analogous to a node.More info: http://kubernetes.io/docs/user-guide/persistent-volumes
class K8S::V1_6_1::Kubernetes::Api::V1::PersistentVolume
  # Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Spec defines a specification of a persistent volume owned by the cluster.Provisioned by an administrator.More info: http://kubernetes.io/docs/user-guide/persistent-volumes#persistent-volumes
  property spec : ::K8S::V1_6_1::Kubernetes::Api::V1::PersistentVolumeSpec

  # Status represents the current information/status for the persistent volume.Populated by the system.Read-only.More info: http://kubernetes.io/docs/user-guide/persistent-volumes#persistent-volumes
  property status : ::K8S::V1_6_1::Kubernetes::Api::V1::PersistentVolumeStatus

  YAML.mapping({
    api_version: {type: String, default: "PersistentVolume", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_1::Kubernetes::Api::V1::PersistentVolumeSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_1::Kubernetes::Api::V1::PersistentVolumeStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "PersistentVolume", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_1::Kubernetes::Api::V1::PersistentVolumeSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_1::Kubernetes::Api::V1::PersistentVolumeStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@metadata = nil, @spec = nil, @status = nil)
    @api_version = "PersistentVolume"
    @kind = "v1"
  end

  # list or watch objects of kind PersistentVolume
  def self.get
    Kubernetes.client.get
  end

  # create a PersistentVolume
  def self.create(metadata = nil, spec = nil, status = nil)
  end

  # read the specified PersistentVolume
  def self.get(name : String)
    Kubernetes.client.get
  end

  # read status of the specified PersistentVolume
  def self.get(name : String)
    Kubernetes.client.get
  end
end
