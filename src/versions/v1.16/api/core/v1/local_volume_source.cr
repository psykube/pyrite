# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Local represents directly-attached storage with node affinity (Beta feature)
  class Api::Core::V1::LocalVolumeSource
    # Filesystem type to mount. It applies only when the Path is a block device. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". The default value is to auto-select a fileystem if unspecified.
    property fs_type : String | Nil

    # The full path to the volume on the node. It can be either a directory or block device (disk, partition, ...).
    property path : String

    ::YAML.mapping({
      fs_type: {type: String, nilable: true, key: "fsType", getter: false, setter: false},
      path:    {type: String, nilable: false, key: "path", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      fs_type: {type: String, nilable: true, key: "fsType", getter: false, setter: false},
      path:    {type: String, nilable: false, key: "path", getter: false, setter: false},
    }, true)

    def initialize(*, @path : String, @fs_type : String | Nil = nil)
    end
  end
end
