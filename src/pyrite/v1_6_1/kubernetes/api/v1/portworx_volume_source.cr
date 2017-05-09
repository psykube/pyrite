# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_1
  # PortworxVolumeSource represents a Portworx volume resource.
  class Definitions::Kubernetes::Api::V1::PortworxVolumeSource
    # FSType represents the filesystem type to mount Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs". Implicitly inferred to be "ext4" if unspecified.
    property fs_type : String?

    # Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)
    property read_only : Bool?

    # VolumeID uniquely identifies a Portworx volume
    property volume_id : String

    YAML.mapping({fs_type:   {type: String, nilable: true, key: fsType, getter: false, setter: false},
                  read_only: {type: Bool, nilable: true, key: readOnly, getter: false, setter: false},
                  volume_id: {type: String, nilable: false, key: volumeID, getter: false, setter: false}}, true)

    JSON.mapping({fs_type:   {type: String, nilable: true, key: fsType, getter: false, setter: false},
                  read_only: {type: Bool, nilable: true, key: readOnly, getter: false, setter: false},
                  volume_id: {type: String, nilable: false, key: volumeID, getter: false, setter: false}}, true)

    def initialize(@fs_type : String? = nil, @read_only : Bool? = nil, @volume_id : String? = nil)
    end
  end
end
