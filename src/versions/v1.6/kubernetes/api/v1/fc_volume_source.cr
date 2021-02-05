# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents a Fibre Channel volume. Fibre Channel volumes can only be mounted as [read/write once. Fibre Channel volumes support ownership management and SELinux relabeling.](read/write once. Fibre Channel volumes support ownership management and SELinux relabeling.)
  class Kubernetes::Api::V1::FCVolumeSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
    @[JSON::Field(key: "fsType")]
    @[YAML::Field(key: "fsType")]
    property fs_type : String | Nil

    # Required: FC target lun number
    @[JSON::Field(key: "lun")]
    @[YAML::Field(key: "lun")]
    property lun : Int32

    # Optional: Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)
    @[JSON::Field(key: "readOnly")]
    @[YAML::Field(key: "readOnly")]
    property read_only : Bool | Nil

    # Required: FC target worldwide names (WWNs)
    @[JSON::Field(key: "targetWWNs")]
    @[YAML::Field(key: "targetWWNs")]
    property target_wwns : Array(String)

    def initialize(*, @fs_type : String | Nil = nil, @lun : Int32, @read_only : Bool | Nil = nil, @target_wwns : Array)
    end
  end
end
