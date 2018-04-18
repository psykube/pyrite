# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents a cinder volume resource in Openstack. A Cinder volume must exist before mounting to a container. The volume must also be in the same region as the kubelet. Cinder volumes support ownership management and SELinux relabeling.
  class Kubernetes::Api::V1::CinderVolumeSource
    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: [https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md](https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md)
    property fs_type : String | Nil

    # Optional: Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md)
    property read_only : Bool | Nil

    # volume id used to identify the volume in cinder More info: [https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md](https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md)
    property volume_id : String

    ::YAML.mapping({
      fs_type:   {type: String, nilable: true, key: "fsType", getter: false, setter: false},
      read_only: {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
      volume_id: {type: String, nilable: false, key: "volumeID", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      fs_type:   {type: String, nilable: true, key: "fsType", getter: false, setter: false},
      read_only: {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
      volume_id: {type: String, nilable: false, key: "volumeID", getter: false, setter: false},
    }, true)

    def initialize(*, @volume_id : String, @fs_type : String | Nil = nil, @read_only : Bool | Nil = nil)
    end
  end
end
