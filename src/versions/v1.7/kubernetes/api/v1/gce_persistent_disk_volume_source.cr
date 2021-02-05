# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents a Persistent Disk resource in Google Compute Engine.
  #
  # A GCE PD must exist before mounting to a container. The disk must also be in the same GCE project and zone as the kubelet. A GCE PD can only be mounted as [read/write once or read-only many times. GCE PDs support ownership management and SELinux relabeling.](read/write once or read-only many times. GCE PDs support ownership management and SELinux relabeling.)
  class Kubernetes::Api::V1::GCEPersistentDiskVolumeSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: [https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk](https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk)
    @[::JSON::Field(key: "fsType")]
    @[::YAML::Field(key: "fsType")]
    property fs_type : String | Nil

    # The partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume [/dev/sda1, you specify the partition as "1". Similarly, the volume partition for /dev/sda is "0" (or you can leave the property empty). More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk](/dev/sda1, you specify the partition as "1". Similarly, the volume partition for /dev/sda is "0" (or you can leave the property empty). More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk)
    @[::JSON::Field(key: "partition")]
    @[::YAML::Field(key: "partition")]
    property partition : Int32 | Nil

    # Unique name of the PD resource in GCE. Used to identify the disk in GCE. More info: [https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk](https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk)
    @[::JSON::Field(key: "pdName")]
    @[::YAML::Field(key: "pdName")]
    property pd_name : String

    # ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: [https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk](https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk)
    @[::JSON::Field(key: "readOnly")]
    @[::YAML::Field(key: "readOnly")]
    property read_only : Bool | Nil

    def initialize(*, @fs_type : String | Nil = nil, @partition : Int32 | Nil = nil, @pd_name : String, @read_only : Bool | Nil = nil)
    end
  end
end
