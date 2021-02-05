# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents a Photon Controller persistent disk resource.
  class Api::Core::V1::PhotonPersistentDiskVolumeSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
    @[::JSON::Field(key: "fsType")]
    @[::YAML::Field(key: "fsType")]
    property fs_type : String | Nil

    # ID that identifies Photon Controller persistent disk
    @[::JSON::Field(key: "pdID")]
    @[::YAML::Field(key: "pdID")]
    property pd_id : String

    def initialize(*, @fs_type : String | Nil = nil, @pd_id : String)
    end
  end
end
