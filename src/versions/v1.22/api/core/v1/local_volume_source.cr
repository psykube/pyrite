# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Local represents directly-attached storage with node affinity (Beta feature)
  class Api::Core::V1::LocalVolumeSource < Kubernetes::Spec
    # Filesystem type to mount. It applies only when the Path is a block device. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". The default value is to auto-select a fileystem if unspecified.
    @[::JSON::Field(key: "fsType")]
    @[::YAML::Field(key: "fsType")]
    property fs_type : String | Nil

    # The full path to the volume on the node. It can be either a directory or block device (disk, partition, ...).
    @[::JSON::Field(key: "path")]
    @[::YAML::Field(key: "path")]
    property path : String

    def initialize(*, @fs_type : String | Nil = nil, @path : String)
    end
  end
end
