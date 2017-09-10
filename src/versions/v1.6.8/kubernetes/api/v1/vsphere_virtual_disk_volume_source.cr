# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents a vSphere volume resource.
  class Kubernetes::Api::V1::VsphereVirtualDiskVolumeSource
    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
    property fs_type : String | Nil

    # Path that identifies vSphere volume vmdk
    property volume_path : String

    YAML.mapping({
      fs_type:     {type: String, nilable: true, key: "fsType"},
      volume_path: {type: String, nilable: false, key: "volumePath"},
    }, true)

    JSON.mapping({
      fs_type:     {type: String, nilable: true, key: "fsType"},
      volume_path: {type: String, nilable: false, key: "volumePath"},
    }, true)

    def initialize(*, @fs_type : String | Nil = nil, @volume_path : String | Nil = nil)
    end
  end
end
