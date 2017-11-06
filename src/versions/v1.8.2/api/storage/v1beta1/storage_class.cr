# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # StorageClass describes the parameters for a class of storage for which PersistentVolumes can be dynamically provisioned.
  #
  # StorageClasses are non-namespaced; the name of the storage class according to etcd is in ObjectMeta.Name.
  class Api::Storage::V1beta1::StorageClass
    getter api_version : String = "io/k8s/api/storage/v1beta1"
    getter kind : String = "StorageClass"
    # AllowVolumeExpansion shows whether the storage class allow volume expand
    property allow_volume_expansion : Bool | Nil

    # Standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Dynamically provisioned PersistentVolumes of this storage class are created with these mountOptions, e.g. ["ro", "soft"]. Not validated - mount of the PVs will simply fail if one is invalid.
    property mount_options : Array(String) | Nil

    # Parameters holds the parameters for the provisioner that should create volumes of this storage class.
    property parameters : Hash(String, String) | Nil

    # Provisioner indicates the type of the provisioner.
    property provisioner : String

    # Dynamically provisioned PersistentVolumes of this storage class are created with this reclaimPolicy. Defaults to Delete.
    property reclaim_policy : String | Nil

    ::YAML.mapping({
      api_version:            {type: String, default: "io/k8s/api/storage/v1beta1", key: "apiVersion", setter: false},
      kind:                   {type: String, default: "StorageClass", key: "kind", setter: false},
      allow_volume_expansion: {type: Bool, nilable: true, key: "allowVolumeExpansion", getter: false, setter: false},
      metadata:               {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      mount_options:          {type: Array(String), nilable: true, key: "mountOptions", getter: false, setter: false},
      parameters:             {type: Hash(String, String), nilable: true, key: "parameters", getter: false, setter: false},
      provisioner:            {type: String, nilable: false, key: "provisioner", getter: false, setter: false},
      reclaim_policy:         {type: String, nilable: true, key: "reclaimPolicy", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version:            {type: String, default: "io/k8s/api/storage/v1beta1", key: "apiVersion", setter: false},
      kind:                   {type: String, default: "StorageClass", key: "kind", setter: false},
      allow_volume_expansion: {type: Bool, nilable: true, key: "allowVolumeExpansion", getter: false, setter: false},
      metadata:               {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      mount_options:          {type: Array(String), nilable: true, key: "mountOptions", getter: false, setter: false},
      parameters:             {type: Hash(String, String), nilable: true, key: "parameters", getter: false, setter: false},
      provisioner:            {type: String, nilable: false, key: "provisioner", getter: false, setter: false},
      reclaim_policy:         {type: String, nilable: true, key: "reclaimPolicy", getter: false, setter: false},
    }, true)

    def initialize(*, @allow_volume_expansion : Bool | Nil = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @mount_options : Array | Nil = nil, @parameters : Hash(String, String) | Nil = nil, @provisioner : String | Nil = nil, @reclaim_policy : String | Nil = nil)
    end
  end

  module Resources::Io::K8s::Api::Storage::V1beta1
    alias StorageClass = ::Pyrite::Api::Storage::V1beta1::StorageClass
  end
end
