# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_5
  # Represents a Persistent Disk resource in Google Compute Engine.
  #
  # A GCE PD must exist before mounting to a container. The disk must also be in the same GCE project and zone as the kubelet. A GCE PD can only be mounted as [read/write once or read-only many times. GCE PDs support ownership management and SELinux relabeling.](read/write once or read-only many times. GCE PDs support ownership management and SELinux relabeling.)
  class Definitions::V1::GCEPersistentDiskVolumeSource
    # Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: [http://kubernetes.io/docs/user-guide/volumes#gcepersistentdisk](http://kubernetes.io/docs/user-guide/volumes#gcepersistentdisk)
    property fs_type : String?

    # The partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume [/dev/sda1, you specify the partition as "1". Similarly, the volume partition for /dev/sda is "0" (or you can leave the property empty). More info: http://kubernetes.io/docs/user-guide/volumes#gcepersistentdisk](/dev/sda1, you specify the partition as "1". Similarly, the volume partition for /dev/sda is "0" (or you can leave the property empty). More info: http://kubernetes.io/docs/user-guide/volumes#gcepersistentdisk)
    property partition : Int32?

    # Unique name of the PD resource in GCE. Used to identify the disk in GCE. More info: [http://kubernetes.io/docs/user-guide/volumes#gcepersistentdisk](http://kubernetes.io/docs/user-guide/volumes#gcepersistentdisk)
    property pd_name : String

    # ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: [http://kubernetes.io/docs/user-guide/volumes#gcepersistentdisk](http://kubernetes.io/docs/user-guide/volumes#gcepersistentdisk)
    property read_only : Bool?

    YAML.mapping({fs_type:   {type: String, nilable: true, key: fsType, getter: false, setter: false},
                  partition: {type: Int32, nilable: true, key: partition, getter: false, setter: false},
                  pd_name:   {type: String, nilable: false, key: pdName, getter: false, setter: false},
                  read_only: {type: Bool, nilable: true, key: readOnly, getter: false, setter: false}}, true)

    JSON.mapping({fs_type:   {type: String, nilable: true, key: fsType, getter: false, setter: false},
                  partition: {type: Int32, nilable: true, key: partition, getter: false, setter: false},
                  pd_name:   {type: String, nilable: false, key: pdName, getter: false, setter: false},
                  read_only: {type: Bool, nilable: true, key: readOnly, getter: false, setter: false}}, true)

    def initialize(@fs_type : String? = nil, @partition : Int32? = nil, @pd_name : String? = nil, @read_only : Bool? = nil)
    end
  end
end
