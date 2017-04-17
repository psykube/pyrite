# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# Represents a vSphere volume resource.
class K8S::V1_6_0::Kubernetes::Api::V1::VsphereVirtualDiskVolumeSource
  # Filesystem type to mount.Must be a filesystem type supported by the host operating system.Ex."ext4", "xfs", "ntfs".Implicitly inferred to be "ext4" if unspecified.
  property fs_type : String?

  # Path that identifies vSphere volume vmdk
  property volume_path : String

  YAML.mapping({fs_type:     {type: String, nilable: true, key: fsType, getter: false, setter: false},
                volume_path: {type: String, nilable: false, key: volumePath, getter: false, setter: false}}, true)

  JSON.mapping({fs_type:     {type: String, nilable: true, key: fsType, getter: false, setter: false},
                volume_path: {type: String, nilable: false, key: volumePath, getter: false, setter: false}}, true)

  def initialize(@volume_path, @fs_type = nil)
  end
end
