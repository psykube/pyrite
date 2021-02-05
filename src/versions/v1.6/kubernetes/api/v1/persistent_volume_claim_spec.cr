# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PersistentVolumeClaimSpec describes the common attributes of storage devices and allows a Source for provider-specific attributes
  class Kubernetes::Api::V1::PersistentVolumeClaimSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # AccessModes contains the desired access modes the volume should have. More info: [http://kubernetes.io/docs/user-guide/persistent-volumes#access-modes-1](http://kubernetes.io/docs/user-guide/persistent-volumes#access-modes-1)
    @[JSON::Field(key: "accessModes")]
    @[YAML::Field(key: "accessModes")]
    property access_modes : Array(String) | Nil

    # Resources represents the minimum resources the volume should have. More info: [http://kubernetes.io/docs/user-guide/persistent-volumes#resources](http://kubernetes.io/docs/user-guide/persistent-volumes#resources)
    @[JSON::Field(key: "resources")]
    @[YAML::Field(key: "resources")]
    property resources : Kubernetes::Api::V1::ResourceRequirements | Nil

    # A label query over volumes to consider for binding.
    @[JSON::Field(key: "selector")]
    @[YAML::Field(key: "selector")]
    property selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # Name of the StorageClass required by the claim. More info: [http://kubernetes.io/docs/user-guide/persistent-volumes#class-1](http://kubernetes.io/docs/user-guide/persistent-volumes#class-1)
    @[JSON::Field(key: "storageClassName")]
    @[YAML::Field(key: "storageClassName")]
    property storage_class_name : String | Nil

    # VolumeName is the binding reference to the PersistentVolume backing this claim.
    @[JSON::Field(key: "volumeName")]
    @[YAML::Field(key: "volumeName")]
    property volume_name : String | Nil

    def initialize(*, @access_modes : Array | Nil = nil, @resources : Kubernetes::Api::V1::ResourceRequirements | Nil = nil, @selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @storage_class_name : String | Nil = nil, @volume_name : String | Nil = nil)
    end
  end
end
