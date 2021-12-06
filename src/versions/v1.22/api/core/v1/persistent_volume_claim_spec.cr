# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PersistentVolumeClaimSpec describes the common attributes of storage devices and allows a Source for provider-specific attributes
  class Api::Core::V1::PersistentVolumeClaimSpec < Kubernetes::Spec
    # AccessModes contains the desired access modes the volume should have. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1)
    @[::JSON::Field(key: "accessModes")]
    @[::YAML::Field(key: "accessModes")]
    property access_modes : Array(String) | Nil

    # This field can be used to specify either: * An existing VolumeSnapshot object [(snapshot.storage.k8s.io/VolumeSnapshot) * An existing PVC (PersistentVolumeClaim) If the provisioner or an external controller can support the specified data source, it will create a new volume based on the contents of the specified data source. If the AnyVolumeDataSource feature gate is enabled, this field will always have the same contents as the DataSourceRef field.]((snapshot.storage.k8s.io/VolumeSnapshot) * An existing PVC (PersistentVolumeClaim) If the provisioner or an external controller can support the specified data source, it will create a new volume based on the contents of the specified data source. If the AnyVolumeDataSource feature gate is enabled, this field will always have the same contents as the DataSourceRef field.)
    @[::JSON::Field(key: "dataSource")]
    @[::YAML::Field(key: "dataSource")]
    property data_source : Api::Core::V1::TypedLocalObjectReference | Nil

    # Specifies the object from which to populate the volume with data, if a non-empty volume is desired. This may be any local object from a non-empty API group (non core object) or a PersistentVolumeClaim object. When this field is specified, volume binding will only succeed if the type of the specified object matches some installed volume populator or dynamic provisioner. This field will replace the functionality of the DataSource field and as such if both fields are non-empty, they must have the same value. For backwards compatibility, both fields (DataSource and DataSourceRef) will be set to the same value automatically if one of them is empty and the other is non-empty. There are two important differences between DataSource and DataSourceRef: * While DataSource only allows two specific types of objects, DataSourceRef
    #   allows any non-core object, as well as PersistentVolumeClaim objects.
    # * While DataSource ignores disallowed values (dropping them), DataSourceRef
    #   preserves all values, and generates an error if a disallowed value is
    #   specified.
    # (Alpha) Using this field requires the AnyVolumeDataSource feature gate to be enabled.
    @[::JSON::Field(key: "dataSourceRef")]
    @[::YAML::Field(key: "dataSourceRef")]
    property data_source_ref : Api::Core::V1::TypedLocalObjectReference | Nil

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

    def initialize(*, @access_modes : Array | Nil = nil, @data_source : Api::Core::V1::TypedLocalObjectReference | Nil = nil, @data_source_ref : Api::Core::V1::TypedLocalObjectReference | Nil = nil, @resources : Api::Core::V1::ResourceRequirements | Nil = nil, @selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @storage_class_name : String | Nil = nil, @volume_mode : String | Nil = nil, @volume_name : String | Nil = nil)
    end
  end
end
