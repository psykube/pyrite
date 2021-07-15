# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents storage that is managed by an external CSI volume driver (Beta feature)
  class Api::Core::V1::CSIPersistentVolumeSource < Kubernetes::Spec
    # ControllerPublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI ControllerPublishVolume and ControllerUnpublishVolume calls. This field is optional, and  may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
    @[::JSON::Field(key: "controllerPublishSecretRef")]
    @[::YAML::Field(key: "controllerPublishSecretRef")]
    property controller_publish_secret_ref : Api::Core::V1::SecretReference | Nil

    # Driver is the name of the driver to use for this volume. Required.
    @[::JSON::Field(key: "driver")]
    @[::YAML::Field(key: "driver")]
    property driver : String

    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs".
    @[::JSON::Field(key: "fsType")]
    @[::YAML::Field(key: "fsType")]
    property fs_type : String | Nil

    # NodePublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume calls. This field is optional, and  may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
    @[::JSON::Field(key: "nodePublishSecretRef")]
    @[::YAML::Field(key: "nodePublishSecretRef")]
    property node_publish_secret_ref : Api::Core::V1::SecretReference | Nil

    # NodeStageSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodeStageVolume and NodeStageVolume and NodeUnstageVolume calls. This field is optional, and  may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
    @[::JSON::Field(key: "nodeStageSecretRef")]
    @[::YAML::Field(key: "nodeStageSecretRef")]
    property node_stage_secret_ref : Api::Core::V1::SecretReference | Nil

    # Optional: The value to pass to ControllerPublishVolumeRequest. Defaults to false [(read/write).]((read/write).)
    @[::JSON::Field(key: "readOnly")]
    @[::YAML::Field(key: "readOnly")]
    property read_only : Bool | Nil

    # Attributes of the volume to publish.
    @[::JSON::Field(key: "volumeAttributes")]
    @[::YAML::Field(key: "volumeAttributes")]
    property volume_attributes : Hash(String, String) | Nil

    # VolumeHandle is the unique volume name returned by the CSI volume plugin’s CreateVolume to refer to the volume on all subsequent calls. Required.
    @[::JSON::Field(key: "volumeHandle")]
    @[::YAML::Field(key: "volumeHandle")]
    property volume_handle : String

    def initialize(*, @controller_publish_secret_ref : Api::Core::V1::SecretReference | Nil = nil, @driver : String, @fs_type : String | Nil = nil, @node_publish_secret_ref : Api::Core::V1::SecretReference | Nil = nil, @node_stage_secret_ref : Api::Core::V1::SecretReference | Nil = nil, @read_only : Bool | Nil = nil, @volume_attributes : Hash(String, String) | Nil = nil, @volume_handle : String)
    end
  end
end
