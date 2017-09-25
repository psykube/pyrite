# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PersistentVolumeClaimSpec describes the common attributes of storage devices and allows a Source for provider-specific attributes
  class Kubernetes::Api::V1::PersistentVolumeClaimSpec
    # AccessModes contains the desired access modes the volume should have. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1)
    property access_modes : Array(String) | Nil

    # Resources represents the minimum resources the volume should have. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources](https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources)
    property resources : Kubernetes::Api::V1::ResourceRequirements | Nil

    # A label query over volumes to consider for binding.
    property selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # Name of the StorageClass required by the claim. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1)
    property storage_class_name : String | Nil

    # VolumeName is the binding reference to the PersistentVolume backing this claim.
    property volume_name : String | Nil

    YAML.mapping({
      access_modes:       {type: Array(String), nilable: true, key: "accessModes", getter: false, setter: false},
      resources:          {type: Kubernetes::Api::V1::ResourceRequirements, nilable: true, key: "resources", getter: false, setter: false},
      selector:           {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "selector", getter: false, setter: false},
      storage_class_name: {type: String, nilable: true, key: "storageClassName", getter: false, setter: false},
      volume_name:        {type: String, nilable: true, key: "volumeName", getter: false, setter: false},
    }, true)

    JSON.mapping({
      access_modes:       {type: Array(String), nilable: true, key: "accessModes", getter: false, setter: false},
      resources:          {type: Kubernetes::Api::V1::ResourceRequirements, nilable: true, key: "resources", getter: false, setter: false},
      selector:           {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "selector", getter: false, setter: false},
      storage_class_name: {type: String, nilable: true, key: "storageClassName", getter: false, setter: false},
      volume_name:        {type: String, nilable: true, key: "volumeName", getter: false, setter: false},
    }, true)

    def initialize(*, @access_modes : Array | Nil = nil, @resources : Kubernetes::Api::V1::ResourceRequirements | Nil = nil, @selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @storage_class_name : String | Nil = nil, @volume_name : String | Nil = nil)
    end
  end
end
