# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # StorageClass describes the parameters for a class of storage for which PersistentVolumes can be dynamically provisioned.
  #
  # StorageClasses are non-namespaced; the name of the storage class according to etcd is in ObjectMeta.Name.
  class Kubernetes::Apis::Storage::V1::StorageClass
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[JSON::Field(key: "apiVersion")]
    @[YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String = "storage/v1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "StorageClass"
    # Standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    @[JSON::Field(key: "metadata")]
    @[YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Parameters holds the parameters for the provisioner that should create volumes of this storage class.
    @[JSON::Field(key: "parameters")]
    @[YAML::Field(key: "parameters")]
    property parameters : Hash(String, String) | Nil

    # Provisioner indicates the type of the provisioner.
    @[JSON::Field(key: "provisioner")]
    @[YAML::Field(key: "provisioner")]
    property provisioner : String

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @parameters : Hash(String, String) | Nil = nil, @provisioner : String)
    end
  end

  module Resources::Storage::V1
    alias StorageClass = ::Pyrite::Kubernetes::Apis::Storage::V1::StorageClass
  end
end
