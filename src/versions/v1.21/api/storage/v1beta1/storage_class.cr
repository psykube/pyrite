# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # StorageClass describes the parameters for a class of storage for which PersistentVolumes can be dynamically provisioned.
  #
  # StorageClasses are non-namespaced; the name of the storage class according to etcd is in ObjectMeta.Name.
  class Api::Storage::V1beta1::StorageClass < Kubernetes::Object
    def self.new(pull : ::JSON::PullParser)
      previous_def(pull).tap do |instance|
        unless instance.api_version == "storage/v1beta1" && instance.kind == "StorageClass"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      previous_def(ctx, node).tap do |instance|
        unless instance.api_version == "storage/v1beta1" && instance.kind == "StorageClass"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    # AllowVolumeExpansion shows whether the storage class allow volume expand
    @[::JSON::Field(key: "allowVolumeExpansion")]
    @[::YAML::Field(key: "allowVolumeExpansion")]
    property allow_volume_expansion : Bool | Nil

    # Restrict the node topologies where volumes can be dynamically provisioned. Each volume plugin defines its own supported topology specifications. An empty TopologySelectorTerm list means there is no topology restriction. This field is only honored by servers that enable the VolumeScheduling feature.
    @[::JSON::Field(key: "allowedTopologies")]
    @[::YAML::Field(key: "allowedTopologies")]
    property allowed_topologies : Array(Api::Core::V1::TopologySelectorTerm) | Nil

    # Dynamically provisioned PersistentVolumes of this storage class are created with these mountOptions, e.g. ["ro", "soft"]. Not validated - mount of the PVs will simply fail if one is invalid.
    @[::JSON::Field(key: "mountOptions")]
    @[::YAML::Field(key: "mountOptions")]
    property mount_options : Array(String) | Nil

    # Parameters holds the parameters for the provisioner that should create volumes of this storage class.
    @[::JSON::Field(key: "parameters")]
    @[::YAML::Field(key: "parameters")]
    property parameters : Hash(String, String) | Nil

    # Provisioner indicates the type of the provisioner.
    @[::JSON::Field(key: "provisioner")]
    @[::YAML::Field(key: "provisioner")]
    property provisioner : String

    # Dynamically provisioned PersistentVolumes of this storage class are created with this reclaimPolicy. Defaults to Delete.
    @[::JSON::Field(key: "reclaimPolicy")]
    @[::YAML::Field(key: "reclaimPolicy")]
    property reclaim_policy : String | Nil

    # VolumeBindingMode indicates how PersistentVolumeClaims should be provisioned and bound.  When unset, VolumeBindingImmediate is used. This field is only honored by servers that enable the VolumeScheduling feature.
    @[::JSON::Field(key: "volumeBindingMode")]
    @[::YAML::Field(key: "volumeBindingMode")]
    property volume_binding_mode : String | Nil

    def initialize(*, @allow_volume_expansion : Bool | Nil = nil, @allowed_topologies : Array | Nil = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @mount_options : Array | Nil = nil, @parameters : Hash(String, String) | Nil = nil, @provisioner : String, @reclaim_policy : String | Nil = nil, @volume_binding_mode : String | Nil = nil)
    end
  end
end
