# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PersistentVolume (PV) is a storage resource provisioned by an administrator. It is analogous to a node. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes](https://kubernetes.io/docs/concepts/storage/persistent-volumes)
  class Kubernetes::Api::V1::PersistentVolume
    getter api_version : String = "v1"
    getter kind : String = "PersistentVolume"
    # Standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec defines a specification of a persistent volume owned by the cluster. Provisioned by an administrator. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistent-volumes](https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistent-volumes)
    property spec : Kubernetes::Api::V1::PersistentVolumeSpec | Nil

    # Status represents the current [information/status for the persistent volume. Populated by the system. Read-only. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistent-volumes](information/status for the persistent volume. Populated by the system. Read-only. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistent-volumes)
    property status : Kubernetes::Api::V1::PersistentVolumeStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "PersistentVolume", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Kubernetes::Api::V1::PersistentVolumeSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Kubernetes::Api::V1::PersistentVolumeStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "PersistentVolume", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Kubernetes::Api::V1::PersistentVolumeSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Kubernetes::Api::V1::PersistentVolumeStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Api::V1::PersistentVolumeSpec | Nil = nil, @status : Kubernetes::Api::V1::PersistentVolumeStatus | Nil = nil)
    end

    # create a PersistentVolume
    def create(context : String | Nil = nil)
    end

    # list or watch objects of kind PersistentVolume
    def self.list(context : String | Nil = nil, field_selector : String | Nil = nil, include_uninitialized : Bool | Nil = nil, label_selector : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # delete collection of PersistentVolume
    def self.delete(context : String | Nil = nil, field_selector : String | Nil = nil, include_uninitialized : Bool | Nil = nil, label_selector : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # read the specified PersistentVolume
    def self.read(name : String, context : String | Nil = nil, exact : Bool | Nil = nil, export : Bool | Nil = nil)
    end

    # replace the specified PersistentVolume
    def replace(context : String | Nil = nil)
    end

    # partially update the specified PersistentVolume
    def patch(context : String | Nil = nil)
    end

    # delete a PersistentVolume
    def delete(api_version : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, kind : String | Nil = nil, orphan_dependents : Bool | Nil = nil, preconditions : Apimachinery::Apis::Meta::V1::Preconditions | Nil = nil, propagation_policy : String | Nil = nil, context : String | Nil = nil)
    end

    # read status of the specified PersistentVolume
    def self.read_status(name : String, context : String | Nil = nil)
    end

    # replace status of the specified PersistentVolume
    def replace_status(context : String | Nil = nil)
    end

    # partially update status of the specified PersistentVolume
    def patch_status(context : String | Nil = nil)
    end
  end

  module Resources::V1
    alias PersistentVolume = ::Pyrite::Kubernetes::Api::V1::PersistentVolume
  end
end
