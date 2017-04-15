require "yaml"
require "json"

# PersistentVolumeClaim is a user's request for and claim to a persistent volume
class K8S::V1_6_1::Kubernetes::Api::V1::PersistentVolumeClaim
  # Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Spec defines the desired characteristics of a volume requested by a pod author.More info: http://kubernetes.io/docs/user-guide/persistent-volumes#persistentvolumeclaims
  property spec : ::K8S::V1_6_1::Kubernetes::Api::V1::PersistentVolumeClaimSpec

  # Status represents the current information/status of a persistent volume claim.Read-only.More info: http://kubernetes.io/docs/user-guide/persistent-volumes#persistentvolumeclaims
  property status : ::K8S::V1_6_1::Kubernetes::Api::V1::PersistentVolumeClaimStatus

  YAML.mapping({
    api_version: {type: String, default: "PersistentVolumeClaim", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_1::Kubernetes::Api::V1::PersistentVolumeClaimSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_1::Kubernetes::Api::V1::PersistentVolumeClaimStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "PersistentVolumeClaim", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_1::Kubernetes::Api::V1::PersistentVolumeClaimSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_1::Kubernetes::Api::V1::PersistentVolumeClaimStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@metadata = nil, @spec = nil, @status = nil)
    @api_version = "PersistentVolumeClaim"
    @kind = "v1"
  end

  # list or watch objects of kind PersistentVolumeClaim
  def self.get(namespace : String = "default")
    Kubernetes.client.get
  end

  # create a PersistentVolumeClaim
  def self.create(metadata = nil, spec = nil, status = nil, namespace : String = "default")
  end

  # read the specified PersistentVolumeClaim
  def self.get(name : String, namespace : String = "default")
    Kubernetes.client.get
  end

  # read status of the specified PersistentVolumeClaim
  def self.get(name : String, namespace : String = "default")
    Kubernetes.client.get
  end
end
