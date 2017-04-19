# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# ServiceAccount binds together: * a name, understood by users, and perhaps by peripheral systems, for an identity * a principal that can be authenticated and authorized * a set of secrets
class Pyrite::V1_6_1::Kubernetes::Api::V1::ServiceAccount
  # AutomountServiceAccountToken indicates whether pods running as this service account should have an API token automatically mounted. Can be overridden at the pod level.
  property automount_service_account_token : Bool?

  # ImagePullSecrets is a list of references to secrets in the same namespace to use for pulling any images in pods that reference this ServiceAccount. ImagePullSecrets are distinct from Secrets because Secrets can be mounted in the pod, but ImagePullSecrets are only accessed by the kubelet. More info: [http://kubernetes.io/docs/user-guide/secrets#manually-specifying-an-imagepullsecret](http://kubernetes.io/docs/user-guide/secrets#manually-specifying-an-imagepullsecret)
  property image_pull_secrets : Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::LocalObjectReference)?

  # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
  property metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Secrets is the list of secrets allowed to be used by pods running using this ServiceAccount. More info: [http://kubernetes.io/docs/user-guide/secrets](http://kubernetes.io/docs/user-guide/secrets)
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

  def initialize(@api_version : String? = nil, @automount_service_account_token : Bool? = nil, @image_pull_secrets : Array? = nil, @kind : String? = nil, @metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta = nil, @secrets : Array? = nil)
    @api_version = "ServiceAccount"
    @kind = "v1"
  end

  # create a ServiceAccount
  def create(context : String? = nil)
  end

  # list or watch objects of kind ServiceAccount
  def self.list(context : String? = nil, field_selector : String? = nil, label_selector : String? = nil, resource_version : String? = nil, timeout_seconds : Int32? = nil, watch : Bool? = nil, namespace : String = "default")
  end

  # delete collection of ServiceAccount
  def self.delete(context : String? = nil, field_selector : String? = nil, label_selector : String? = nil, resource_version : String? = nil, timeout_seconds : Int32? = nil, watch : Bool? = nil, namespace : String = "default")
  end

  # read the specified ServiceAccount
  def self.read(name : String, context : String? = nil, exact : Bool? = nil, export : Bool? = nil, namespace : String = "default")
  end

  # replace the specified ServiceAccount
  def replace(context : String? = nil)
  end

  # partially update the specified ServiceAccount
  def patch(context : String? = nil)
  end

  # delete a ServiceAccount
  def delete(grace_period_seconds : Int32? = nil, orphan_dependents : Bool? = nil, preconditions : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::Preconditions = nil, propagation_policy : String? = nil, context : String? = nil)
  end
end
