# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PersistentVolumeClaimStatus is the current status of a persistent volume claim.
  class Kubernetes::Api::V1::PersistentVolumeClaimStatus
    # AccessModes contains the actual access modes the volume backing the PVC has. More info: [http://kubernetes.io/docs/user-guide/persistent-volumes#access-modes-1](http://kubernetes.io/docs/user-guide/persistent-volumes#access-modes-1)
    property access_modes : Array(String) | Nil

    # Represents the actual resources of the underlying volume.
    property capacity : Hash(String, String) | Nil

    # Phase represents the current phase of PersistentVolumeClaim.
    property phase : String | Nil

    ::YAML.mapping({
      access_modes: {type: Array(String), nilable: true, key: "accessModes", getter: false, setter: false},
      capacity:     {type: Hash(String, String), nilable: true, key: "capacity", getter: false, setter: false},
      phase:        {type: String, nilable: true, key: "phase", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      access_modes: {type: Array(String), nilable: true, key: "accessModes", getter: false, setter: false},
      capacity:     {type: Hash(String, String), nilable: true, key: "capacity", getter: false, setter: false},
      phase:        {type: String, nilable: true, key: "phase", getter: false, setter: false},
    }, true)

    def initialize(*, @access_modes : Array | Nil = nil, @capacity : Hash(String, String) | Nil = nil, @phase : String | Nil = nil)
    end
  end
end
