# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# PersistentVolumeClaim is a user's request for and claim to a persistent volume
class Pyrite::V1_6_0::Kubernetes::Api::V1::PersistentVolumeClaim
  # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
  property metadata : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Spec defines the desired characteristics of a volume requested by a pod author. More info: [http://kubernetes.io/docs/user-guide/persistent-volumes#persistentvolumeclaims](http://kubernetes.io/docs/user-guide/persistent-volumes#persistentvolumeclaims)
  property spec : ::Pyrite::V1_6_0::Kubernetes::Api::V1::PersistentVolumeClaimSpec

  # Status represents the current [information/status of a persistent volume claim. Read-only. More info: http://kubernetes.io/docs/user-guide/persistent-volumes#persistentvolumeclaims](information/status of a persistent volume claim. Read-only. More info: http://kubernetes.io/docs/user-guide/persistent-volumes#persistentvolumeclaims)
  property status : ::Pyrite::V1_6_0::Kubernetes::Api::V1::PersistentVolumeClaimStatus

  YAML.mapping({
    api_version: {type: String, default: "PersistentVolumeClaim", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::PersistentVolumeClaimSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::PersistentVolumeClaimStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "PersistentVolumeClaim", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::PersistentVolumeClaimSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::PersistentVolumeClaimStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta = nil, @spec : ::Pyrite::V1_6_0::Kubernetes::Api::V1::PersistentVolumeClaimSpec = nil, @status : ::Pyrite::V1_6_0::Kubernetes::Api::V1::PersistentVolumeClaimStatus = nil)
    @api_version = "PersistentVolumeClaim"
    @kind = "v1"
  end

  # create a PersistentVolumeClaim
  def create(context : String? = nil)
  end

  # list or watch objects of kind PersistentVolumeClaim
  def self.list(context : String? = nil, field_selector : String? = nil, label_selector : String? = nil, resource_version : String? = nil, timeout_seconds : Int32? = nil, watch : Bool? = nil, namespace : String = "default")
  end

  # delete collection of PersistentVolumeClaim
  def self.delete(context : String? = nil, field_selector : String? = nil, label_selector : String? = nil, resource_version : String? = nil, timeout_seconds : Int32? = nil, watch : Bool? = nil, namespace : String = "default")
  end

  # read the specified PersistentVolumeClaim
  def self.read(name : String, context : String? = nil, exact : Bool? = nil, export : Bool? = nil, namespace : String = "default")
  end

  # replace the specified PersistentVolumeClaim
  def replace(context : String? = nil)
  end

  # partially update the specified PersistentVolumeClaim
  def patch(context : String? = nil)
  end

  # delete a PersistentVolumeClaim
  def delete(grace_period_seconds : Int32? = nil, orphan_dependents : Bool? = nil, preconditions : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::Preconditions = nil, propagation_policy : String? = nil, context : String? = nil)
  end

  # read status of the specified PersistentVolumeClaim
  def self.read_status(name : String, context : String? = nil, namespace : String = "default")
  end

  # replace status of the specified PersistentVolumeClaim
  def replace_status(context : String? = nil)
  end

  # partially update status of the specified PersistentVolumeClaim
  def patch_status(context : String? = nil)
  end
end
