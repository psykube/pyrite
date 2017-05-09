# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_1
  # PersistentVolumeSpec is the specification of a persistent volume.
  class Definitions::V1::PersistentVolumeSpec
    # AccessModes contains all ways the volume can be mounted. More info: [http://kubernetes.io/docs/user-guide/persistent-volumes#access-modes](http://kubernetes.io/docs/user-guide/persistent-volumes#access-modes)
    property access_modes : Array(String)?

    # A description of the persistent volume's resources and capacity. More info: [http://kubernetes.io/docs/user-guide/persistent-volumes#capacity](http://kubernetes.io/docs/user-guide/persistent-volumes#capacity)
    property capacity : Hash(String, String)?

    # ClaimRef is part of a bi-directional binding between PersistentVolume and PersistentVolumeClaim. Expected to be non-nil when bound. claim.VolumeName is the authoritative bind between PV and PVC. More info: [http://kubernetes.io/docs/user-guide/persistent-volumes#binding](http://kubernetes.io/docs/user-guide/persistent-volumes#binding)
    property claim_ref : V1::ObjectReference

    # What happens to a persistent volume when released from its claim. Valid options are Retain (default) and Recycle. Recycling must be supported by the volume plugin underlying this persistent volume. More info: [http://kubernetes.io/docs/user-guide/persistent-volumes#recycling-policy](http://kubernetes.io/docs/user-guide/persistent-volumes#recycling-policy)
    property persistent_volume_reclaim_policy : String?

    YAML.mapping({access_modes:                     {type: Array(String), nilable: true, key: accessModes, getter: false, setter: false},
                  capacity:                         {type: Hash(String, String), nilable: true, key: capacity, getter: false, setter: false},
                  claim_ref:                        {type: V1::ObjectReference, nilable: true, key: claimRef, getter: false, setter: false},
                  persistent_volume_reclaim_policy: {type: String, nilable: true, key: persistentVolumeReclaimPolicy, getter: false, setter: false}}, true)

    JSON.mapping({access_modes:                     {type: Array(String), nilable: true, key: accessModes, getter: false, setter: false},
                  capacity:                         {type: Hash(String, String), nilable: true, key: capacity, getter: false, setter: false},
                  claim_ref:                        {type: V1::ObjectReference, nilable: true, key: claimRef, getter: false, setter: false},
                  persistent_volume_reclaim_policy: {type: String, nilable: true, key: persistentVolumeReclaimPolicy, getter: false, setter: false}}, true)

    def initialize(@access_modes : Array? = nil, @capacity : Hash(String, String)? = nil, @claim_ref : V1::ObjectReference = nil, @persistent_volume_reclaim_policy : String? = nil)
    end
  end
end
