# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents a vSphere volume resource.
  class Kubernetes::Api::V1::VsphereVirtualDiskVolumeSource < Kubernetes::Spec
    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
    @[::JSON::Field(key: "fsType")]
    @[::YAML::Field(key: "fsType")]
    property fs_type : String | Nil

    # Path that identifies vSphere volume vmdk
    @[::JSON::Field(key: "volumePath")]
    @[::YAML::Field(key: "volumePath")]
    property volume_path : String

    def initialize(*, @fs_type : String | Nil = nil, @volume_path : String)
    end
  end
end
