# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents a vSphere volume resource.
  class Api::Core::V1::VsphereVirtualDiskVolumeSource < Kubernetes::Spec
    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
    @[::JSON::Field(key: "fsType")]
    @[::YAML::Field(key: "fsType")]
    property fs_type : String | Nil

    # Storage Policy Based Management (SPBM) profile ID associated with the StoragePolicyName.
    @[::JSON::Field(key: "storagePolicyID")]
    @[::YAML::Field(key: "storagePolicyID")]
    property storage_policy_id : String | Nil

    # Storage Policy Based Management (SPBM) profile name.
    @[::JSON::Field(key: "storagePolicyName")]
    @[::YAML::Field(key: "storagePolicyName")]
    property storage_policy_name : String | Nil

    # Path that identifies vSphere volume vmdk
    @[::JSON::Field(key: "volumePath")]
    @[::YAML::Field(key: "volumePath")]
    property volume_path : String

    def initialize(*, @fs_type : String | Nil = nil, @storage_policy_id : String | Nil = nil, @storage_policy_name : String | Nil = nil, @volume_path : String)
    end
  end
end
