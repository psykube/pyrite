# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# PersistentVolume (PV) is a storage resource provisioned by an administrator.It is analogous to a node.More info: http://kubernetes.io/docs/user-guide/persistent-volumes
class Pyrite::V1_6_0::Kubernetes::Api::V1::PersistentVolume
  # Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Spec defines a specification of a persistent volume owned by the cluster.Provisioned by an administrator.More info: http://kubernetes.io/docs/user-guide/persistent-volumes#persistent-volumes
  property spec : ::Pyrite::V1_6_0::Kubernetes::Api::V1::PersistentVolumeSpec

  # Status represents the current information/status for the persistent volume.Populated by the system.Read-only.More info: http://kubernetes.io/docs/user-guide/persistent-volumes#persistent-volumes
  property status : ::Pyrite::V1_6_0::Kubernetes::Api::V1::PersistentVolumeStatus

  YAML.mapping({
    api_version: {type: String, default: "PersistentVolume", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::PersistentVolumeSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::PersistentVolumeStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "PersistentVolume", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::PersistentVolumeSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::PersistentVolumeStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@metadata = nil, @spec = nil, @status = nil)
    @api_version = "PersistentVolume"
    @kind = "v1"
  end

  # list or watch objects of kind PersistentVolume
  def self.get(pretty : String?, field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?)
  end

  # create a PersistentVolume
  def self.create(pretty : String?, metadata = nil, spec = nil, status = nil)
  end

  # delete collection of PersistentVolume
  def self.delete(pretty : String?, field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?)
  end

  # read the specified PersistentVolume
  def self.get(pretty : String?, exact : Bool?, export : Bool?, name : String)
  end

  # replace the specified PersistentVolume
  def replace(pretty : String?, metadata = nil, spec = nil, status = nil)
  end

  # delete a PersistentVolume
  def delete(pretty : String?, grace_period_seconds : Int32?, orphan_dependents : Bool?, propagation_policy : String?, preconditions = nil)
  end

  # read status of the specified PersistentVolume
  def self.get(pretty : String?, name : String)
  end

  # replace status of the specified PersistentVolume
  def replace(pretty : String?, metadata = nil, spec = nil, status = nil)
  end
end
