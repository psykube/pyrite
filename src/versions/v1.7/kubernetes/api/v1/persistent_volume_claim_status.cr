# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PersistentVolumeClaimStatus is the current status of a persistent volume claim.
  class Kubernetes::Api::V1::PersistentVolumeClaimStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # AccessModes contains the actual access modes the volume backing the PVC has. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1)
    @[::JSON::Field(key: "accessModes")]
    @[::YAML::Field(key: "accessModes")]
    property access_modes : Array(String) | Nil

    # Represents the actual resources of the underlying volume.
    @[::JSON::Field(key: "capacity")]
    @[::YAML::Field(key: "capacity")]
    property capacity : Hash(String, String) | Nil

    # Phase represents the current phase of PersistentVolumeClaim.
    @[::JSON::Field(key: "phase")]
    @[::YAML::Field(key: "phase")]
    property phase : String | Nil

    def initialize(*, @access_modes : Array | Nil = nil, @capacity : Hash(String, String) | Nil = nil, @phase : String | Nil = nil)
    end
  end
end
