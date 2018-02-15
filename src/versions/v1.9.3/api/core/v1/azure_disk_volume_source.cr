# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
  class Api::Core::V1::AzureDiskVolumeSource
    # Host Caching mode: None, Read Only, Read Write.
    property caching_mode : String | Nil

    # The Name of the data disk in the blob storage
    property disk_name : String

    # The URI the data disk in the blob storage
    property disk_uri : String

    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
    property fs_type : String | Nil

    # Expected values Shared: multiple blob disks per storage account  Dedicated: single blob disk per storage account  Managed: azure managed data disk (only in managed availability set). defaults to shared
    property kind : String | Nil

    # Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)
    property read_only : Bool | Nil

    ::YAML.mapping({
      caching_mode: {type: String, nilable: true, key: "cachingMode", getter: false, setter: false},
      disk_name:    {type: String, nilable: false, key: "diskName", getter: false, setter: false},
      disk_uri:     {type: String, nilable: false, key: "diskURI", getter: false, setter: false},
      fs_type:      {type: String, nilable: true, key: "fsType", getter: false, setter: false},
      kind:         {type: String, nilable: true, key: "kind", getter: false, setter: false},
      read_only:    {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      caching_mode: {type: String, nilable: true, key: "cachingMode", getter: false, setter: false},
      disk_name:    {type: String, nilable: false, key: "diskName", getter: false, setter: false},
      disk_uri:     {type: String, nilable: false, key: "diskURI", getter: false, setter: false},
      fs_type:      {type: String, nilable: true, key: "fsType", getter: false, setter: false},
      kind:         {type: String, nilable: true, key: "kind", getter: false, setter: false},
      read_only:    {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
    }, true)

    def initialize(*, @caching_mode : String | Nil = nil, @disk_name : String | Nil = nil, @disk_uri : String | Nil = nil, @fs_type : String | Nil = nil, @kind : String | Nil = nil, @read_only : Bool | Nil = nil)
    end
  end
end
