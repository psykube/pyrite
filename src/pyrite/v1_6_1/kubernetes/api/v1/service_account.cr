# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# ServiceAccount binds together: * a name, understood by users, and perhaps by peripheral systems, for an identity * a principal that can be authenticated and authorized * a set of secrets
class Pyrite::V1_6_1::Kubernetes::Api::V1::ServiceAccount
  # AutomountServiceAccountToken indicates whether pods running as this service account should have an API token automatically mounted.Can be overridden at the pod level.
  property automount_service_account_token : Bool?

  # ImagePullSecrets is a list of references to secrets in the same namespace to use for pulling any images in pods that reference this ServiceAccount.ImagePullSecrets are distinct from Secrets because Secrets can be mounted in the pod, but ImagePullSecrets are only accessed by the kubelet.More info: http://kubernetes.io/docs/user-guide/secrets#manually-specifying-an-imagepullsecret
  property image_pull_secrets : Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::LocalObjectReference)?

  # Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Secrets is the list of secrets allowed to be used by pods running using this ServiceAccount.More info: http://kubernetes.io/docs/user-guide/secrets
  property secrets : Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::ObjectReference)?

  YAML.mapping({
    api_version:                     {type: String, default: "ServiceAccount", key: apiVersion, getter: false, setter: false},
    kind:                            {type: String, default: "v1", getter: false, setter: false},
    automount_service_account_token: {type: Bool, nilable: true, key: automountServiceAccountToken, getter: false, setter: false},
    image_pull_secrets:              {type: Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::LocalObjectReference), nilable: true, key: imagePullSecrets, getter: false, setter: false},
    metadata:                        {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    secrets:                         {type: Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::ObjectReference), nilable: true, key: secrets, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version:                     {type: String, default: "ServiceAccount", key: apiVersion, getter: false, setter: false},
    kind:                            {type: String, default: "v1", getter: false, setter: false},
    automount_service_account_token: {type: Bool, nilable: true, key: automountServiceAccountToken, getter: false, setter: false},
    image_pull_secrets:              {type: Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::LocalObjectReference), nilable: true, key: imagePullSecrets, getter: false, setter: false},
    metadata:                        {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    secrets:                         {type: Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::ObjectReference), nilable: true, key: secrets, getter: false, setter: false},
  }, true)

  def initialize(@automount_service_account_token = nil, @image_pull_secrets = nil, @metadata = nil, @secrets = nil)
    @api_version = "ServiceAccount"
    @kind = "v1"
  end

  # list or watch objects of kind ServiceAccount
  def self.get(pretty : String?, field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # create a ServiceAccount
  def self.create(pretty : String?, automount_service_account_token = nil, image_pull_secrets = nil, metadata = nil, secrets = nil, namespace : String = "default")
  end

  # delete collection of ServiceAccount
  def self.delete(pretty : String?, field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # read the specified ServiceAccount
  def self.get(pretty : String?, exact : Bool?, export : Bool?, name : String, namespace : String = "default")
  end

  # replace the specified ServiceAccount
  def replace(pretty : String?, automount_service_account_token = nil, image_pull_secrets = nil, metadata = nil, secrets = nil)
  end

  # delete a ServiceAccount
  def delete(pretty : String?, grace_period_seconds : Int32?, orphan_dependents : Bool?, propagation_policy : String?, preconditions = nil)
  end
end
