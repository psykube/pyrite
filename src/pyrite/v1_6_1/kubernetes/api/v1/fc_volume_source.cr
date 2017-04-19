# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# Represents a Fibre Channel volume. Fibre Channel volumes can only be mounted as [read/write once. Fibre Channel volumes support ownership management and SELinux relabeling.](read/write once. Fibre Channel volumes support ownership management and SELinux relabeling.)
class Pyrite::V1_6_1::Kubernetes::Api::V1::FCVolumeSource
  # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
  property fs_type : String?

  # Required: FC target lun number
  property lun : Int32

  # Optional: Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)
  property read_only : Bool?

  # Required: FC target worldwide names (WWNs)
  property target_ww_ns : Array(String)

  YAML.mapping({fs_type:      {type: String, nilable: true, key: fsType, getter: false, setter: false},
                lun:          {type: Int32, nilable: false, key: lun, getter: false, setter: false},
                read_only:    {type: Bool, nilable: true, key: readOnly, getter: false, setter: false},
                target_ww_ns: {type: Array(String), nilable: false, key: targetWWNs, getter: false, setter: false}}, true)

  JSON.mapping({fs_type:      {type: String, nilable: true, key: fsType, getter: false, setter: false},
                lun:          {type: Int32, nilable: false, key: lun, getter: false, setter: false},
                read_only:    {type: Bool, nilable: true, key: readOnly, getter: false, setter: false},
                target_ww_ns: {type: Array(String), nilable: false, key: targetWWNs, getter: false, setter: false}}, true)

  def initialize(@fs_type : String? = nil, @lun : Int32? = nil, @read_only : Bool? = nil, @target_ww_ns : Array? = nil)
  end
end
