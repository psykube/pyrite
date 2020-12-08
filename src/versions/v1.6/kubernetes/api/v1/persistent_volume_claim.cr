# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PersistentVolumeClaim is a user's request for and claim to a persistent volume
  class Kubernetes::Api::V1::PersistentVolumeClaim
    getter api_version : String = "v1"
    getter kind : String = "PersistentVolumeClaim"
    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec defines the desired characteristics of a volume requested by a pod author. More info: [http://kubernetes.io/docs/user-guide/persistent-volumes#persistentvolumeclaims](http://kubernetes.io/docs/user-guide/persistent-volumes#persistentvolumeclaims)
    property spec : Kubernetes::Api::V1::PersistentVolumeClaimSpec | Nil

    # Status represents the current [information/status of a persistent volume claim. Read-only. More info: http://kubernetes.io/docs/user-guide/persistent-volumes#persistentvolumeclaims](information/status of a persistent volume claim. Read-only. More info: http://kubernetes.io/docs/user-guide/persistent-volumes#persistentvolumeclaims)
    property status : Kubernetes::Api::V1::PersistentVolumeClaimStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "PersistentVolumeClaim", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Kubernetes::Api::V1::PersistentVolumeClaimSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Kubernetes::Api::V1::PersistentVolumeClaimStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "PersistentVolumeClaim", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Kubernetes::Api::V1::PersistentVolumeClaimSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Kubernetes::Api::V1::PersistentVolumeClaimStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Api::V1::PersistentVolumeClaimSpec | Nil = nil, @status : Kubernetes::Api::V1::PersistentVolumeClaimStatus | Nil = nil)
    end

    # create a PersistentVolumeClaim
    def create(context : String | Nil = nil)
    end

    # list or watch objects of kind PersistentVolumeClaim
    def self.list(context : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # delete collection of PersistentVolumeClaim
    def self.delete(context : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # read the specified PersistentVolumeClaim
    def self.read(name : String, context : String | Nil = nil, exact : Bool | Nil = nil, export : Bool | Nil = nil, namespace : String = "default")
    end

    # replace the specified PersistentVolumeClaim
    def replace(context : String | Nil = nil)
    end

    # partially update the specified PersistentVolumeClaim
    def patch(context : String | Nil = nil)
    end

    # delete a PersistentVolumeClaim
    def delete(api_version : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, kind : String | Nil = nil, orphan_dependents : Bool | Nil = nil, preconditions : Apimachinery::Apis::Meta::V1::Preconditions | Nil = nil, propagation_policy : String | Nil = nil, context : String | Nil = nil)
    end

    # read status of the specified PersistentVolumeClaim
    def self.read_status(name : String, context : String | Nil = nil, namespace : String = "default")
    end

    # replace status of the specified PersistentVolumeClaim
    def replace_status(context : String | Nil = nil)
    end

    # partially update status of the specified PersistentVolumeClaim
    def patch_status(context : String | Nil = nil)
    end
  end

  module Resources::V1
    alias PersistentVolumeClaim = ::Pyrite::Kubernetes::Api::V1::PersistentVolumeClaim
  end
end
