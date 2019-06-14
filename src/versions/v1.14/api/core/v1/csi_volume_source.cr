# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents a source location of a volume to mount, managed by an external CSI driver
  class Api::Core::V1::CSIVolumeSource
    # Driver is the name of the CSI driver that handles this volume. Consult with your admin for the correct name as registered in the cluster.
    property driver : String

    # Filesystem type to mount. Ex. "ext4", "xfs", "ntfs". If not provided, the empty value is passed to the associated CSI driver which will determine the default filesystem to apply.
    property fs_type : String | Nil

    # NodePublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume calls. This field is optional, and  may be empty if no secret is required. If the secret object contains more than one secret, all secret references are passed.
    property node_publish_secret_ref : Api::Core::V1::LocalObjectReference | Nil

    # Specifies a read-only configuration for the volume. Defaults to false [(read/write).]((read/write).)
    property read_only : Bool | Nil

    # VolumeAttributes stores driver-specific properties that are passed to the CSI driver. Consult your driver's documentation for supported values.
    property volume_attributes : Hash(String, String) | Nil

    ::YAML.mapping({
      driver:                  {type: String, nilable: false, key: "driver", getter: false, setter: false},
      fs_type:                 {type: String, nilable: true, key: "fsType", getter: false, setter: false},
      node_publish_secret_ref: {type: Api::Core::V1::LocalObjectReference, nilable: true, key: "nodePublishSecretRef", getter: false, setter: false},
      read_only:               {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
      volume_attributes:       {type: Hash(String, String), nilable: true, key: "volumeAttributes", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      driver:                  {type: String, nilable: false, key: "driver", getter: false, setter: false},
      fs_type:                 {type: String, nilable: true, key: "fsType", getter: false, setter: false},
      node_publish_secret_ref: {type: Api::Core::V1::LocalObjectReference, nilable: true, key: "nodePublishSecretRef", getter: false, setter: false},
      read_only:               {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
      volume_attributes:       {type: Hash(String, String), nilable: true, key: "volumeAttributes", getter: false, setter: false},
    }, true)

    def initialize(*, @driver : String, @fs_type : String | Nil = nil, @node_publish_secret_ref : Api::Core::V1::LocalObjectReference | Nil = nil, @read_only : Bool | Nil = nil, @volume_attributes : Hash(String, String) | Nil = nil)
    end
  end
end
