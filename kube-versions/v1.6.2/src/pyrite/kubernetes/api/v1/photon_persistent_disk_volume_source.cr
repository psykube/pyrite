# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents a Photon Controller persistent disk resource.
  class Kubernetes::Api::V1::PhotonPersistentDiskVolumeSource
    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
    property fs_type : String | Nil

    # ID that identifies Photon Controller persistent disk
    property pd_id : String

    YAML.mapping({
      fs_type: {type: String, nilable: true, key: "fsType"},
      pd_id:   {type: String, nilable: false, key: "pdID"},
    }, true)

    JSON.mapping({
      fs_type: {type: String, nilable: true, key: "fsType"},
      pd_id:   {type: String, nilable: false, key: "pdID"},
    }, true)

    def initialize(*, @fs_type : String | Nil = nil, @pd_id : String | Nil = nil)
    end
  end
end
