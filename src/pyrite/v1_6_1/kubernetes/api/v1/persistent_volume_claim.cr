# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# PersistentVolumeClaim is a user's request for and claim to a persistent volume
class Pyrite::V1_6_1::Kubernetes::Api::V1::PersistentVolumeClaim
  # Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Spec defines the desired characteristics of a volume requested by a pod author.More info: http://kubernetes.io/docs/user-guide/persistent-volumes#persistentvolumeclaims
  property spec : ::Pyrite::V1_6_1::Kubernetes::Api::V1::PersistentVolumeClaimSpec

  # Status represents the current information/status of a persistent volume claim.Read-only.More info: http://kubernetes.io/docs/user-guide/persistent-volumes#persistentvolumeclaims
  property status : ::Pyrite::V1_6_1::Kubernetes::Api::V1::PersistentVolumeClaimStatus

  YAML.mapping({
    api_version: {type: String, default: "PersistentVolumeClaim", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::PersistentVolumeClaimSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::PersistentVolumeClaimStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "PersistentVolumeClaim", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::PersistentVolumeClaimSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::PersistentVolumeClaimStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@metadata = nil, @spec = nil, @status = nil)
    @api_version = "PersistentVolumeClaim"
    @kind = "v1"
  end

  # list or watch objects of kind PersistentVolumeClaim
  def self.get(pretty : String?, field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # create a PersistentVolumeClaim
  def self.create(pretty : String?, metadata = nil, spec = nil, status = nil, namespace : String = "default")
  end

  # delete collection of PersistentVolumeClaim
  def self.delete(pretty : String?, field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # read the specified PersistentVolumeClaim
  def self.get(pretty : String?, exact : Bool?, export : Bool?, name : String, namespace : String = "default")
  end

  # replace the specified PersistentVolumeClaim
  def replace(pretty : String?, metadata = nil, spec = nil, status = nil)
  end

  # delete a PersistentVolumeClaim
  def delete(pretty : String?, grace_period_seconds : Int32?, orphan_dependents : Bool?, propagation_policy : String?, preconditions = nil)
  end

  # read status of the specified PersistentVolumeClaim
  def self.get(pretty : String?, name : String, namespace : String = "default")
  end

  # replace status of the specified PersistentVolumeClaim
  def replace(pretty : String?, metadata = nil, spec = nil, status = nil)
  end
end
