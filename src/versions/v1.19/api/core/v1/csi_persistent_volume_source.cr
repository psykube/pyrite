# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents storage that is managed by an external CSI volume driver (Beta feature)
  class Api::Core::V1::CSIPersistentVolumeSource
    # ControllerExpandSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI ControllerExpandVolume call. This is an alpha field and requires enabling ExpandCSIVolumes feature gate. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
    property controller_expand_secret_ref : Api::Core::V1::SecretReference | Nil

    # ControllerPublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI ControllerPublishVolume and ControllerUnpublishVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
    property controller_publish_secret_ref : Api::Core::V1::SecretReference | Nil

    # Driver is the name of the driver to use for this volume. Required.
    property driver : String

    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs".
    property fs_type : String | Nil

    # NodePublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
    property node_publish_secret_ref : Api::Core::V1::SecretReference | Nil

    # NodeStageSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodeStageVolume and NodeStageVolume and NodeUnstageVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
    property node_stage_secret_ref : Api::Core::V1::SecretReference | Nil

    # Optional: The value to pass to ControllerPublishVolumeRequest. Defaults to false [(read/write).]((read/write).)
    property read_only : Bool | Nil

    # Attributes of the volume to publish.
    property volume_attributes : Hash(String, String) | Nil

    # VolumeHandle is the unique volume name returned by the CSI volume plugin’s CreateVolume to refer to the volume on all subsequent calls. Required.
    property volume_handle : String

    ::YAML.mapping({
      controller_expand_secret_ref:  {type: Api::Core::V1::SecretReference, nilable: true, key: "controllerExpandSecretRef", getter: false, setter: false},
      controller_publish_secret_ref: {type: Api::Core::V1::SecretReference, nilable: true, key: "controllerPublishSecretRef", getter: false, setter: false},
      driver:                        {type: String, nilable: false, key: "driver", getter: false, setter: false},
      fs_type:                       {type: String, nilable: true, key: "fsType", getter: false, setter: false},
      node_publish_secret_ref:       {type: Api::Core::V1::SecretReference, nilable: true, key: "nodePublishSecretRef", getter: false, setter: false},
      node_stage_secret_ref:         {type: Api::Core::V1::SecretReference, nilable: true, key: "nodeStageSecretRef", getter: false, setter: false},
      read_only:                     {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
      volume_attributes:             {type: Hash(String, String), nilable: true, key: "volumeAttributes", getter: false, setter: false},
      volume_handle:                 {type: String, nilable: false, key: "volumeHandle", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      controller_expand_secret_ref:  {type: Api::Core::V1::SecretReference, nilable: true, key: "controllerExpandSecretRef", getter: false, setter: false},
      controller_publish_secret_ref: {type: Api::Core::V1::SecretReference, nilable: true, key: "controllerPublishSecretRef", getter: false, setter: false},
      driver:                        {type: String, nilable: false, key: "driver", getter: false, setter: false},
      fs_type:                       {type: String, nilable: true, key: "fsType", getter: false, setter: false},
      node_publish_secret_ref:       {type: Api::Core::V1::SecretReference, nilable: true, key: "nodePublishSecretRef", getter: false, setter: false},
      node_stage_secret_ref:         {type: Api::Core::V1::SecretReference, nilable: true, key: "nodeStageSecretRef", getter: false, setter: false},
      read_only:                     {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
      volume_attributes:             {type: Hash(String, String), nilable: true, key: "volumeAttributes", getter: false, setter: false},
      volume_handle:                 {type: String, nilable: false, key: "volumeHandle", getter: false, setter: false},
    }, true)

    def initialize(*, @driver : String, @volume_handle : String, @controller_expand_secret_ref : Api::Core::V1::SecretReference | Nil = nil, @controller_publish_secret_ref : Api::Core::V1::SecretReference | Nil = nil, @fs_type : String | Nil = nil, @node_publish_secret_ref : Api::Core::V1::SecretReference | Nil = nil, @node_stage_secret_ref : Api::Core::V1::SecretReference | Nil = nil, @read_only : Bool | Nil = nil, @volume_attributes : Hash(String, String) | Nil = nil)
    end
  end
end
