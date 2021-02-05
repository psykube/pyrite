# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PersistentVolumeClaimVolumeSource references the user's PVC in the same namespace. This volume finds the bound PV and mounts that volume for the pod. A PersistentVolumeClaimVolumeSource is, essentially, a wrapper around another type of volume that is owned by someone else (the system).
  class Kubernetes::Api::V1::PersistentVolumeClaimVolumeSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # ClaimName is the name of a PersistentVolumeClaim in the same namespace as the pod using this volume. More info: [http://kubernetes.io/docs/user-guide/persistent-volumes#persistentvolumeclaims](http://kubernetes.io/docs/user-guide/persistent-volumes#persistentvolumeclaims)
    @[::JSON::Field(key: "claimName")]
    @[::YAML::Field(key: "claimName")]
    property claim_name : String

    # Will force the ReadOnly setting in VolumeMounts. Default false.
    @[::JSON::Field(key: "readOnly")]
    @[::YAML::Field(key: "readOnly")]
    property read_only : Bool | Nil

    def initialize(*, @claim_name : String, @read_only : Bool | Nil = nil)
    end
  end
end
