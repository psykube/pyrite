# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# PersistentVolume (PV) is a storage resource provisioned by an administrator. It is analogous to a node. More info: [http://kubernetes.io/docs/user-guide/persistent-volumes](http://kubernetes.io/docs/user-guide/persistent-volumes)
class Pyrite::V1_6_1::Kubernetes::Api::V1::PersistentVolume
  # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
  property metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Spec defines a specification of a persistent volume owned by the cluster. Provisioned by an administrator. More info: [http://kubernetes.io/docs/user-guide/persistent-volumes#persistent-volumes](http://kubernetes.io/docs/user-guide/persistent-volumes#persistent-volumes)
  property spec : ::Pyrite::V1_6_1::Kubernetes::Api::V1::PersistentVolumeSpec

  # Status represents the current [information/status for the persistent volume. Populated by the system. Read-only. More info: http://kubernetes.io/docs/user-guide/persistent-volumes#persistent-volumes](information/status for the persistent volume. Populated by the system. Read-only. More info: http://kubernetes.io/docs/user-guide/persistent-volumes#persistent-volumes)
  property status : ::Pyrite::V1_6_1::Kubernetes::Api::V1::PersistentVolumeStatus

  YAML.mapping({
    api_version: {type: String, default: "PersistentVolume", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::PersistentVolumeSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::PersistentVolumeStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "PersistentVolume", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::PersistentVolumeSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::PersistentVolumeStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta = nil, @spec : ::Pyrite::V1_6_1::Kubernetes::Api::V1::PersistentVolumeSpec = nil, @status : ::Pyrite::V1_6_1::Kubernetes::Api::V1::PersistentVolumeStatus = nil)
    @api_version = "PersistentVolume"
    @kind = "v1"
  end

  # create a PersistentVolume
  def create(context : String? = nil)
  end

  # list or watch objects of kind PersistentVolume
  def self.list(context : String? = nil, field_selector : String? = nil, label_selector : String? = nil, resource_version : String? = nil, timeout_seconds : Int32? = nil, watch : Bool? = nil)
  end

  # delete collection of PersistentVolume
  def self.delete(context : String? = nil, field_selector : String? = nil, label_selector : String? = nil, resource_version : String? = nil, timeout_seconds : Int32? = nil, watch : Bool? = nil)
  end

  # read the specified PersistentVolume
  def self.read(name : String, context : String? = nil, exact : Bool? = nil, export : Bool? = nil)
  end

  # replace the specified PersistentVolume
  def replace(context : String? = nil)
  end

  # partially update the specified PersistentVolume
  def patch(context : String? = nil)
  end

  # delete a PersistentVolume
  def delete(grace_period_seconds : Int32? = nil, orphan_dependents : Bool? = nil, preconditions : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::Preconditions = nil, propagation_policy : String? = nil, context : String? = nil)
  end

  # read status of the specified PersistentVolume
  def self.read_status(name : String, context : String? = nil)
  end

  # replace status of the specified PersistentVolume
  def replace_status(context : String? = nil)
  end

  # partially update status of the specified PersistentVolume
  def patch_status(context : String? = nil)
  end
end
