# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # StorageClass describes the parameters for a class of storage for which PersistentVolumes can be dynamically provisioned.
  #
  # StorageClasses are non-namespaced; the name of the storage class according to etcd is in ObjectMeta.Name.
  class Kubernetes::Apis::Storage::V1::StorageClass
    getter api_version : String = "storage/v1"
    getter kind : String = "StorageClass"
    # Standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Parameters holds the parameters for the provisioner that should create volumes of this storage class.
    property parameters : Hash(String, String) | Nil

    # Provisioner indicates the type of the provisioner.
    property provisioner : String

    ::YAML.mapping({
      api_version: {type: String, default: "storage/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "StorageClass", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      parameters:  {type: Hash(String, String), nilable: true, key: "parameters", getter: false, setter: false},
      provisioner: {type: String, nilable: false, key: "provisioner", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "storage/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "StorageClass", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      parameters:  {type: Hash(String, String), nilable: true, key: "parameters", getter: false, setter: false},
      provisioner: {type: String, nilable: false, key: "provisioner", getter: false, setter: false},
    }, true)

    def initialize(*, @provisioner : String, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @parameters : Hash(String, String) | Nil = nil)
    end

    # create a StorageClass
    def create(context : String | Nil = nil)
    end

    # list or watch objects of kind StorageClass
    def self.list(context : String | Nil = nil, field_selector : String | Nil = nil, include_uninitialized : Bool | Nil = nil, label_selector : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # delete collection of StorageClass
    def self.delete(context : String | Nil = nil, field_selector : String | Nil = nil, include_uninitialized : Bool | Nil = nil, label_selector : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # read the specified StorageClass
    def self.read(name : String, context : String | Nil = nil, exact : Bool | Nil = nil, export : Bool | Nil = nil)
    end

    # replace the specified StorageClass
    def replace(context : String | Nil = nil)
    end

    # partially update the specified StorageClass
    def patch(context : String | Nil = nil)
    end

    # delete a StorageClass
    def delete(api_version : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, kind : String | Nil = nil, orphan_dependents : Bool | Nil = nil, preconditions : Apimachinery::Apis::Meta::V1::Preconditions | Nil = nil, propagation_policy : String | Nil = nil, context : String | Nil = nil)
    end
  end

  module Resources::Storage::V1
    alias StorageClass = ::Pyrite::Kubernetes::Apis::Storage::V1::StorageClass
  end
end
