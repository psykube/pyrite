# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents a Persistent Disk resource in AWS.
  #
  # An AWS EBS disk must exist before mounting to a container. The disk must also be in the same AWS zone as the kubelet. An AWS EBS disk can only be mounted as [read/write once. AWS EBS volumes support ownership management and SELinux relabeling.](read/write once. AWS EBS volumes support ownership management and SELinux relabeling.)
  class Kubernetes::Api::V1::AWSElasticBlockStoreVolumeSource
    # Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: [https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore)
    property fs_type : String | Nil

    # The partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume [/dev/sda1, you specify the partition as "1". Similarly, the volume partition for /dev/sda is "0" (or you can leave the property empty).](/dev/sda1, you specify the partition as "1". Similarly, the volume partition for /dev/sda is "0" (or you can leave the property empty).)
    property partition : Int32 | Nil

    # Specify "true" to force and set the ReadOnly property in VolumeMounts to "true". If omitted, the default is "false". More info: [https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore)
    property read_only : Bool | Nil

    # Unique ID of the persistent disk resource in AWS (Amazon EBS volume). More info: [https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore)
    property volume_id : String

    YAML.mapping({
      fs_type:   {type: String, nilable: true, key: "fsType"},
      partition: {type: Int32, nilable: true, key: "partition"},
      read_only: {type: Bool, nilable: true, key: "readOnly"},
      volume_id: {type: String, nilable: false, key: "volumeID"},
    }, true)

    JSON.mapping({
      fs_type:   {type: String, nilable: true, key: "fsType"},
      partition: {type: Int32, nilable: true, key: "partition"},
      read_only: {type: Bool, nilable: true, key: "readOnly"},
      volume_id: {type: String, nilable: false, key: "volumeID"},
    }, true)

    def initialize(*, @fs_type : String | Nil = nil, @partition : Int32 | Nil = nil, @read_only : Bool | Nil = nil, @volume_id : String | Nil = nil)
    end
  end
end
