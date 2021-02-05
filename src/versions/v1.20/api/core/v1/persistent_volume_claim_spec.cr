# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PersistentVolumeClaimSpec describes the common attributes of storage devices and allows a Source for provider-specific attributes
  class Api::Core::V1::PersistentVolumeClaimSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # AccessModes contains the desired access modes the volume should have. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1)
    @[::JSON::Field(key: "accessModes")]
    @[::YAML::Field(key: "accessModes")]
    property access_modes : Array(String) | Nil

    # This field can be used to specify either: * An existing VolumeSnapshot object [(snapshot.storage.k8s.io/VolumeSnapshot) * An existing PVC (PersistentVolumeClaim) * An existing custom resource that implements data population (Alpha) In order to use custom resource types that implement data population, the AnyVolumeDataSource feature gate must be enabled. If the provisioner or an external controller can support the specified data source, it will create a new volume based on the contents of the specified data source.]((snapshot.storage.k8s.io/VolumeSnapshot) * An existing PVC (PersistentVolumeClaim) * An existing custom resource that implements data population (Alpha) In order to use custom resource types that implement data population, the AnyVolumeDataSource feature gate must be enabled. If the provisioner or an external controller can support the specified data source, it will create a new volume based on the contents of the specified data source.)
    @[::JSON::Field(key: "dataSource")]
    @[::YAML::Field(key: "dataSource")]
    property data_source : Api::Core::V1::TypedLocalObjectReference | Nil

    # Resources represents the minimum resources the volume should have. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources](https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources)
    @[::JSON::Field(key: "resources")]
    @[::YAML::Field(key: "resources")]
    property resources : Api::Core::V1::ResourceRequirements | Nil

    # A label query over volumes to consider for binding.
    @[::JSON::Field(key: "selector")]
    @[::YAML::Field(key: "selector")]
    property selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # Name of the StorageClass required by the claim. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1)
    @[::JSON::Field(key: "storageClassName")]
    @[::YAML::Field(key: "storageClassName")]
    property storage_class_name : String | Nil

    # volumeMode defines what type of volume is required by the claim. Value of Filesystem is implied when not included in claim spec.
    @[::JSON::Field(key: "volumeMode")]
    @[::YAML::Field(key: "volumeMode")]
    property volume_mode : String | Nil

    # VolumeName is the binding reference to the PersistentVolume backing this claim.
    @[::JSON::Field(key: "volumeName")]
    @[::YAML::Field(key: "volumeName")]
    property volume_name : String | Nil

    def initialize(*, @access_modes : Array | Nil = nil, @data_source : Api::Core::V1::TypedLocalObjectReference | Nil = nil, @resources : Api::Core::V1::ResourceRequirements | Nil = nil, @selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @storage_class_name : String | Nil = nil, @volume_mode : String | Nil = nil, @volume_name : String | Nil = nil)
    end
  end
end
