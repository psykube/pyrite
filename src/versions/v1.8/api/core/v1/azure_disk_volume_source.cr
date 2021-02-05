# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
  class Api::Core::V1::AzureDiskVolumeSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Host Caching mode: None, Read Only, Read Write.
    @[JSON::Field(key: "cachingMode")]
    @[YAML::Field(key: "cachingMode")]
    property caching_mode : String | Nil

    # The Name of the data disk in the blob storage
    @[JSON::Field(key: "diskName")]
    @[YAML::Field(key: "diskName")]
    property disk_name : String

    # The URI the data disk in the blob storage
    @[JSON::Field(key: "diskURI")]
    @[YAML::Field(key: "diskURI")]
    property disk_uri : String

    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
    @[JSON::Field(key: "fsType")]
    @[YAML::Field(key: "fsType")]
    property fs_type : String | Nil

    # Expected values Shared: mulitple blob disks per storage account  Dedicated: single blob disk per storage account  Managed: azure managed data disk (only in managed availability set). defaults to shared
    @[JSON::Field(key: "kind")]
    @[YAML::Field(key: "kind")]
    property kind : String | Nil

    # Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)
    @[JSON::Field(key: "readOnly")]
    @[YAML::Field(key: "readOnly")]
    property read_only : Bool | Nil

    def initialize(*, @caching_mode : String | Nil = nil, @disk_name : String, @disk_uri : String, @fs_type : String | Nil = nil, @kind : String | Nil = nil, @read_only : Bool | Nil = nil)
    end
  end
end
