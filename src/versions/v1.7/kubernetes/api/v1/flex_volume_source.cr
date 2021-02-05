# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # FlexVolume represents a generic volume resource that is [provisioned/attached using an exec based plugin. This is an alpha feature and may change in future.](provisioned/attached using an exec based plugin. This is an alpha feature and may change in future.)
  class Kubernetes::Api::V1::FlexVolumeSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Driver is the name of the driver to use for this volume.
    @[JSON::Field(key: "driver")]
    @[YAML::Field(key: "driver")]
    property driver : String

    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". The default filesystem depends on FlexVolume script.
    @[JSON::Field(key: "fsType")]
    @[YAML::Field(key: "fsType")]
    property fs_type : String | Nil

    # Optional: Extra command options if any.
    @[JSON::Field(key: "options")]
    @[YAML::Field(key: "options")]
    property options : Hash(String, String) | Nil

    # Optional: Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)
    @[JSON::Field(key: "readOnly")]
    @[YAML::Field(key: "readOnly")]
    property read_only : Bool | Nil

    # Optional: SecretRef is reference to the secret object containing sensitive information to pass to the plugin scripts. This may be empty if no secret object is specified. If the secret object contains more than one secret, all secrets are passed to the plugin scripts.
    @[JSON::Field(key: "secretRef")]
    @[YAML::Field(key: "secretRef")]
    property secret_ref : Kubernetes::Api::V1::LocalObjectReference | Nil

    def initialize(*, @driver : String, @fs_type : String | Nil = nil, @options : Hash(String, String) | Nil = nil, @read_only : Bool | Nil = nil, @secret_ref : Kubernetes::Api::V1::LocalObjectReference | Nil = nil)
    end
  end
end
