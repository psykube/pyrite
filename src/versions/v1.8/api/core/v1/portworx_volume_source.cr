# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PortworxVolumeSource represents a Portworx volume resource.
  class Api::Core::V1::PortworxVolumeSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # FSType represents the filesystem type to mount Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs". Implicitly inferred to be "ext4" if unspecified.
    @[::JSON::Field(key: "fsType")]
    @[::YAML::Field(key: "fsType")]
    property fs_type : String | Nil

    # Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)
    @[::JSON::Field(key: "readOnly")]
    @[::YAML::Field(key: "readOnly")]
    property read_only : Bool | Nil

    # VolumeID uniquely identifies a Portworx volume
    @[::JSON::Field(key: "volumeID")]
    @[::YAML::Field(key: "volumeID")]
    property volume_id : String

    def initialize(*, @fs_type : String | Nil = nil, @read_only : Bool | Nil = nil, @volume_id : String)
    end
  end
end
