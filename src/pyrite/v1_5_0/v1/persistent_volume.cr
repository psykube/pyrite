# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_0
  # PersistentVolume (PV) is a storage resource provisioned by an administrator. It is analogous to a node. More info: [http://kubernetes.io/docs/user-guide/persistent-volumes](http://kubernetes.io/docs/user-guide/persistent-volumes)
  class Definitions::V1::PersistentVolume
    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : V1::ObjectMeta

    # Spec defines a specification of a persistent volume owned by the cluster. Provisioned by an administrator. More info: [http://kubernetes.io/docs/user-guide/persistent-volumes#persistent-volumes](http://kubernetes.io/docs/user-guide/persistent-volumes#persistent-volumes)
    property spec : V1::PersistentVolumeSpec

    # Status represents the current [information/status for the persistent volume. Populated by the system. Read-only. More info: http://kubernetes.io/docs/user-guide/persistent-volumes#persistent-volumes](information/status for the persistent volume. Populated by the system. Read-only. More info: http://kubernetes.io/docs/user-guide/persistent-volumes#persistent-volumes)
    property status : V1::PersistentVolumeStatus

    YAML.mapping({metadata: {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                  spec:     {type: V1::PersistentVolumeSpec, nilable: true, key: spec, getter: false, setter: false},
                  status:   {type: V1::PersistentVolumeStatus, nilable: true, key: status, getter: false, setter: false}}, true)

    JSON.mapping({metadata: {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                  spec:     {type: V1::PersistentVolumeSpec, nilable: true, key: spec, getter: false, setter: false},
                  status:   {type: V1::PersistentVolumeStatus, nilable: true, key: status, getter: false, setter: false}}, true)

    def initialize(@metadata : V1::ObjectMeta = nil, @spec : V1::PersistentVolumeSpec = nil, @status : V1::PersistentVolumeStatus = nil)
    end
  end
end
