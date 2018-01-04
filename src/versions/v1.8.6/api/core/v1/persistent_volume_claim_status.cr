# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PersistentVolumeClaimStatus is the current status of a persistent volume claim.
  class Api::Core::V1::PersistentVolumeClaimStatus
    # AccessModes contains the actual access modes the volume backing the PVC has. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1)
    property access_modes : Array(String) | Nil

    # Represents the actual resources of the underlying volume.
    property capacity : Hash(String, String) | Nil

    # Current Condition of persistent volume claim. If underlying persistent volume is being resized then the Condition will be set to 'ResizeStarted'.
    property conditions : Array(Api::Core::V1::PersistentVolumeClaimCondition) | Nil

    # Phase represents the current phase of PersistentVolumeClaim.
    property phase : String | Nil

    ::YAML.mapping({
      access_modes: {type: Array(String), nilable: true, key: "accessModes", getter: false, setter: false},
      capacity:     {type: Hash(String, String), nilable: true, key: "capacity", getter: false, setter: false},
      conditions:   {type: Array(Api::Core::V1::PersistentVolumeClaimCondition), nilable: true, key: "conditions", getter: false, setter: false},
      phase:        {type: String, nilable: true, key: "phase", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      access_modes: {type: Array(String), nilable: true, key: "accessModes", getter: false, setter: false},
      capacity:     {type: Hash(String, String), nilable: true, key: "capacity", getter: false, setter: false},
      conditions:   {type: Array(Api::Core::V1::PersistentVolumeClaimCondition), nilable: true, key: "conditions", getter: false, setter: false},
      phase:        {type: String, nilable: true, key: "phase", getter: false, setter: false},
    }, true)

    def initialize(*, @access_modes : Array | Nil = nil, @capacity : Hash(String, String) | Nil = nil, @conditions : Array | Nil = nil, @phase : String | Nil = nil)
    end
  end
end
