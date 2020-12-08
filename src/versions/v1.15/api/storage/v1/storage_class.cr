# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # StorageClass describes the parameters for a class of storage for which PersistentVolumes can be dynamically provisioned.
  #
  # StorageClasses are non-namespaced; the name of the storage class according to etcd is in ObjectMeta.Name.
  class Api::Storage::V1::StorageClass
    getter api_version : String = "storage/v1"
    getter kind : String = "StorageClass"
    # AllowVolumeExpansion shows whether the storage class allow volume expand
    property allow_volume_expansion : Bool | Nil

    # Restrict the node topologies where volumes can be dynamically provisioned. Each volume plugin defines its own supported topology specifications. An empty TopologySelectorTerm list means there is no topology restriction. This field is only honored by servers that enable the VolumeScheduling feature.
    property allowed_topologies : Array(Api::Core::V1::TopologySelectorTerm) | Nil

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

    # VolumeBindingMode indicates how PersistentVolumeClaims should be provisioned and bound.  When unset, VolumeBindingImmediate is used. This field is only honored by servers that enable the VolumeScheduling feature.
    property volume_binding_mode : String | Nil

    ::YAML.mapping({
      api_version:            {type: String, default: "storage/v1", key: "apiVersion", setter: false},
      kind:                   {type: String, default: "StorageClass", key: "kind", setter: false},
      allow_volume_expansion: {type: Bool, nilable: true, key: "allowVolumeExpansion", getter: false, setter: false},
      allowed_topologies:     {type: Array(Api::Core::V1::TopologySelectorTerm), nilable: true, key: "allowedTopologies", getter: false, setter: false},
      metadata:               {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      mount_options:          {type: Array(String), nilable: true, key: "mountOptions", getter: false, setter: false},
      parameters:             {type: Hash(String, String), nilable: true, key: "parameters", getter: false, setter: false},
      provisioner:            {type: String, nilable: false, key: "provisioner", getter: false, setter: false},
      reclaim_policy:         {type: String, nilable: true, key: "reclaimPolicy", getter: false, setter: false},
      volume_binding_mode:    {type: String, nilable: true, key: "volumeBindingMode", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version:            {type: String, default: "storage/v1", key: "apiVersion", setter: false},
      kind:                   {type: String, default: "StorageClass", key: "kind", setter: false},
      allow_volume_expansion: {type: Bool, nilable: true, key: "allowVolumeExpansion", getter: false, setter: false},
      allowed_topologies:     {type: Array(Api::Core::V1::TopologySelectorTerm), nilable: true, key: "allowedTopologies", getter: false, setter: false},
      metadata:               {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      mount_options:          {type: Array(String), nilable: true, key: "mountOptions", getter: false, setter: false},
      parameters:             {type: Hash(String, String), nilable: true, key: "parameters", getter: false, setter: false},
      provisioner:            {type: String, nilable: false, key: "provisioner", getter: false, setter: false},
      reclaim_policy:         {type: String, nilable: true, key: "reclaimPolicy", getter: false, setter: false},
      volume_binding_mode:    {type: String, nilable: true, key: "volumeBindingMode", getter: false, setter: false},
    }, true)

    def initialize(*, @provisioner : String, @allow_volume_expansion : Bool | Nil = nil, @allowed_topologies : Array | Nil = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @mount_options : Array | Nil = nil, @parameters : Hash(String, String) | Nil = nil, @reclaim_policy : String | Nil = nil, @volume_binding_mode : String | Nil = nil)
    end

    # create a StorageClass
    def create(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil)
    end

    # list or watch objects of kind StorageClass
    def self.list(context : String | Nil = nil, allow_watch_bookmarks : Bool | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # delete collection of StorageClass
    def self.delete(context : String | Nil = nil, allow_watch_bookmarks : Bool | Nil = nil, continue : String | Nil = nil, dry_run : String | Nil = nil, field_selector : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, orphan_dependents : Bool | Nil = nil, propagation_policy : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # read the specified StorageClass
    def self.read(name : String, context : String | Nil = nil, exact : Bool | Nil = nil, export : Bool | Nil = nil)
    end

    # replace the specified StorageClass
    def replace(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil)
    end

    # partially update the specified StorageClass
    def patch(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil, force : Bool | Nil = nil)
    end

    # delete a StorageClass
    def delete(context : String | Nil = nil, dry_run : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, orphan_dependents : Bool | Nil = nil, propagation_policy : String | Nil = nil)
    end
  end

  module Resources::Storage::V1
    alias StorageClass = ::Pyrite::Api::Storage::V1::StorageClass
  end
end
