# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_0
  # PersistentVolumeClaim is a user's request for and claim to a persistent volume
  class Definitions::V1::PersistentVolumeClaim
    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : V1::ObjectMeta

    # Spec defines the desired characteristics of a volume requested by a pod author. More info: [http://kubernetes.io/docs/user-guide/persistent-volumes#persistentvolumeclaims](http://kubernetes.io/docs/user-guide/persistent-volumes#persistentvolumeclaims)
    property spec : V1::PersistentVolumeClaimSpec

    # Status represents the current [information/status of a persistent volume claim. Read-only. More info: http://kubernetes.io/docs/user-guide/persistent-volumes#persistentvolumeclaims](information/status of a persistent volume claim. Read-only. More info: http://kubernetes.io/docs/user-guide/persistent-volumes#persistentvolumeclaims)
    property status : V1::PersistentVolumeClaimStatus

    YAML.mapping({metadata: {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                  spec:     {type: V1::PersistentVolumeClaimSpec, nilable: true, key: spec, getter: false, setter: false},
                  status:   {type: V1::PersistentVolumeClaimStatus, nilable: true, key: status, getter: false, setter: false}}, true)

    JSON.mapping({metadata: {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                  spec:     {type: V1::PersistentVolumeClaimSpec, nilable: true, key: spec, getter: false, setter: false},
                  status:   {type: V1::PersistentVolumeClaimStatus, nilable: true, key: status, getter: false, setter: false}}, true)

    def initialize(@metadata : V1::ObjectMeta = nil, @spec : V1::PersistentVolumeClaimSpec = nil, @status : V1::PersistentVolumeClaimStatus = nil)
    end
  end
end
