require "yaml"
require "json"

# Represents a Photon Controller persistent disk resource.
class K8S::V1_6_1::Kubernetes::Api::V1::PhotonPersistentDiskVolumeSource
  # Filesystem type to mount.Must be a filesystem type supported by the host operating system.Ex."ext4", "xfs", "ntfs".Implicitly inferred to be "ext4" if unspecified.
  property fs_type : String?

  # ID that identifies Photon Controller persistent disk
  property pd_id : String

  YAML.mapping({fs_type: {type: String, nilable: true, key: fsType, getter: false, setter: false},
                pd_id:   {type: String, nilable: false, key: pdID, getter: false, setter: false}}, true)

  JSON.mapping({fs_type: {type: String, nilable: true, key: fsType, getter: false, setter: false},
                pd_id:   {type: String, nilable: false, key: pdID, getter: false, setter: false}}, true)

  def initialize(@pd_id, @fs_type = nil)
  end
end
