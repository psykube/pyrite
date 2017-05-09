# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_0
  # PersistentVolumeClaimSpec describes the common attributes of storage devices and allows a Source for provider-specific attributes
  class Definitions::Kubernetes::Api::V1::PersistentVolumeClaimSpec
    # AccessModes contains the desired access modes the volume should have. More info: [http://kubernetes.io/docs/user-guide/persistent-volumes#access-modes-1](http://kubernetes.io/docs/user-guide/persistent-volumes#access-modes-1)
    property access_modes : Array(String)?

    # Resources represents the minimum resources the volume should have. More info: [http://kubernetes.io/docs/user-guide/persistent-volumes#resources](http://kubernetes.io/docs/user-guide/persistent-volumes#resources)
    property resources : Kubernetes::Api::V1::ResourceRequirements

    # A label query over volumes to consider for binding.
    property selector : Apimachinery::Apis::Meta::V1::LabelSelector

    # Name of the StorageClass required by the claim. More info: [http://kubernetes.io/docs/user-guide/persistent-volumes#class-1](http://kubernetes.io/docs/user-guide/persistent-volumes#class-1)
    property storage_class_name : String?

    # VolumeName is the binding reference to the PersistentVolume backing this claim.
    property volume_name : String?

    YAML.mapping({access_modes:       {type: Array(String), nilable: true, key: accessModes, getter: false, setter: false},
                  resources:          {type: Kubernetes::Api::V1::ResourceRequirements, nilable: true, key: resources, getter: false, setter: false},
                  selector:           {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: selector, getter: false, setter: false},
                  storage_class_name: {type: String, nilable: true, key: storageClassName, getter: false, setter: false},
                  volume_name:        {type: String, nilable: true, key: volumeName, getter: false, setter: false}}, true)

    JSON.mapping({access_modes:       {type: Array(String), nilable: true, key: accessModes, getter: false, setter: false},
                  resources:          {type: Kubernetes::Api::V1::ResourceRequirements, nilable: true, key: resources, getter: false, setter: false},
                  selector:           {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: selector, getter: false, setter: false},
                  storage_class_name: {type: String, nilable: true, key: storageClassName, getter: false, setter: false},
                  volume_name:        {type: String, nilable: true, key: volumeName, getter: false, setter: false}}, true)

    def initialize(@access_modes : Array? = nil, @resources : Kubernetes::Api::V1::ResourceRequirements = nil, @selector : Apimachinery::Apis::Meta::V1::LabelSelector = nil, @storage_class_name : String? = nil, @volume_name : String? = nil)
    end
  end
end
