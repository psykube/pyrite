# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# PersistentVolumeClaimVolumeSource references the user's PVC in the same namespace.This volume finds the bound PV and mounts that volume for the pod.A PersistentVolumeClaimVolumeSource is, essentially, a wrapper around another type of volume that is owned by someone else (the system).
class K8S::V1_6_1::Kubernetes::Api::V1::PersistentVolumeClaimVolumeSource
  # ClaimName is the name of a PersistentVolumeClaim in the same namespace as the pod using this volume.More info: http://kubernetes.io/docs/user-guide/persistent-volumes#persistentvolumeclaims
  property claim_name : String

  # Will force the ReadOnly setting in VolumeMounts.Default false.
  property read_only : Bool?

  YAML.mapping({claim_name: {type: String, nilable: false, key: claimName, getter: false, setter: false},
                read_only:  {type: Bool, nilable: true, key: readOnly, getter: false, setter: false}}, true)

  JSON.mapping({claim_name: {type: String, nilable: false, key: claimName, getter: false, setter: false},
                read_only:  {type: Bool, nilable: true, key: readOnly, getter: false, setter: false}}, true)

  def initialize(@claim_name, @read_only = nil)
  end
end
