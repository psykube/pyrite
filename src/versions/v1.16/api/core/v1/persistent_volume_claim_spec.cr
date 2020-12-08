# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PersistentVolumeClaimSpec describes the common attributes of storage devices and allows a Source for provider-specific attributes
  class Api::Core::V1::PersistentVolumeClaimSpec
    # AccessModes contains the desired access modes the volume should have. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1)
    property access_modes : Array(String) | Nil

    # This field requires the VolumeSnapshotDataSource alpha feature gate to be enabled and currently VolumeSnapshot is the only supported data source. If the provisioner can support VolumeSnapshot data source, it will create a new volume and data will be restored to the volume at the same time. If the provisioner does not support VolumeSnapshot data source, volume will not be created and the failure will be reported as an event. In the future, we plan to support more data source types and the behavior of the provisioner may change.
    property data_source : Api::Core::V1::TypedLocalObjectReference | Nil

    # Resources represents the minimum resources the volume should have. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources](https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources)
    property resources : Api::Core::V1::ResourceRequirements | Nil

    # A label query over volumes to consider for binding.
    property selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # Name of the StorageClass required by the claim. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1)
    property storage_class_name : String | Nil

    # volumeMode defines what type of volume is required by the claim. Value of Filesystem is implied when not included in claim spec. This is a beta feature.
    property volume_mode : String | Nil

    # VolumeName is the binding reference to the PersistentVolume backing this claim.
    property volume_name : String | Nil

    ::YAML.mapping({
      access_modes:       {type: Array(String), nilable: true, key: "accessModes", getter: false, setter: false},
      data_source:        {type: Api::Core::V1::TypedLocalObjectReference, nilable: true, key: "dataSource", getter: false, setter: false},
      resources:          {type: Api::Core::V1::ResourceRequirements, nilable: true, key: "resources", getter: false, setter: false},
      selector:           {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "selector", getter: false, setter: false},
      storage_class_name: {type: String, nilable: true, key: "storageClassName", getter: false, setter: false},
      volume_mode:        {type: String, nilable: true, key: "volumeMode", getter: false, setter: false},
      volume_name:        {type: String, nilable: true, key: "volumeName", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      access_modes:       {type: Array(String), nilable: true, key: "accessModes", getter: false, setter: false},
      data_source:        {type: Api::Core::V1::TypedLocalObjectReference, nilable: true, key: "dataSource", getter: false, setter: false},
      resources:          {type: Api::Core::V1::ResourceRequirements, nilable: true, key: "resources", getter: false, setter: false},
      selector:           {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "selector", getter: false, setter: false},
      storage_class_name: {type: String, nilable: true, key: "storageClassName", getter: false, setter: false},
      volume_mode:        {type: String, nilable: true, key: "volumeMode", getter: false, setter: false},
      volume_name:        {type: String, nilable: true, key: "volumeName", getter: false, setter: false},
    }, true)

    def initialize(*, @access_modes : Array | Nil = nil, @data_source : Api::Core::V1::TypedLocalObjectReference | Nil = nil, @resources : Api::Core::V1::ResourceRequirements | Nil = nil, @selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @storage_class_name : String | Nil = nil, @volume_mode : String | Nil = nil, @volume_name : String | Nil = nil)
    end
  end
end
