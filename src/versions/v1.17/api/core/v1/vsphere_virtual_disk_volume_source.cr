# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents a vSphere volume resource.
  class Api::Core::V1::VsphereVirtualDiskVolumeSource
    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
    property fs_type : String | Nil

    # Storage Policy Based Management (SPBM) profile ID associated with the StoragePolicyName.
    property storage_policy_id : String | Nil

    # Storage Policy Based Management (SPBM) profile name.
    property storage_policy_name : String | Nil

    # Path that identifies vSphere volume vmdk
    property volume_path : String

    ::YAML.mapping({
      fs_type:             {type: String, nilable: true, key: "fsType", getter: false, setter: false},
      storage_policy_id:   {type: String, nilable: true, key: "storagePolicyID", getter: false, setter: false},
      storage_policy_name: {type: String, nilable: true, key: "storagePolicyName", getter: false, setter: false},
      volume_path:         {type: String, nilable: false, key: "volumePath", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      fs_type:             {type: String, nilable: true, key: "fsType", getter: false, setter: false},
      storage_policy_id:   {type: String, nilable: true, key: "storagePolicyID", getter: false, setter: false},
      storage_policy_name: {type: String, nilable: true, key: "storagePolicyName", getter: false, setter: false},
      volume_path:         {type: String, nilable: false, key: "volumePath", getter: false, setter: false},
    }, true)

    def initialize(*, @volume_path : String, @fs_type : String | Nil = nil, @storage_policy_id : String | Nil = nil, @storage_policy_name : String | Nil = nil)
    end
  end
end
