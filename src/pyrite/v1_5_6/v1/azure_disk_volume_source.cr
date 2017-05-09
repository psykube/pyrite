# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_6
  # AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
  class Definitions::V1::AzureDiskVolumeSource
    # Host Caching mode: None, Read Only, Read Write.
    property caching_mode : String?

    # The Name of the data disk in the blob storage
    property disk_name : String

    # The URI the data disk in the blob storage
    property disk_uri : String

    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
    property fs_type : String?

    # Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)
    property read_only : Bool?

    YAML.mapping({caching_mode: {type: String, nilable: true, key: cachingMode, getter: false, setter: false},
                  disk_name:    {type: String, nilable: false, key: diskName, getter: false, setter: false},
                  disk_uri:     {type: String, nilable: false, key: diskURI, getter: false, setter: false},
                  fs_type:      {type: String, nilable: true, key: fsType, getter: false, setter: false},
                  read_only:    {type: Bool, nilable: true, key: readOnly, getter: false, setter: false}}, true)

    JSON.mapping({caching_mode: {type: String, nilable: true, key: cachingMode, getter: false, setter: false},
                  disk_name:    {type: String, nilable: false, key: diskName, getter: false, setter: false},
                  disk_uri:     {type: String, nilable: false, key: diskURI, getter: false, setter: false},
                  fs_type:      {type: String, nilable: true, key: fsType, getter: false, setter: false},
                  read_only:    {type: Bool, nilable: true, key: readOnly, getter: false, setter: false}}, true)

    def initialize(@caching_mode : String? = nil, @disk_name : String? = nil, @disk_uri : String? = nil, @fs_type : String? = nil, @read_only : Bool? = nil)
    end
  end
end
