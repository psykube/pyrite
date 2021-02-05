# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents a cinder volume resource in Openstack. A Cinder volume must exist before mounting to a container. The volume must also be in the same region as the kubelet. Cinder volumes support ownership management and SELinux relabeling.
  class Kubernetes::Api::V1::CinderVolumeSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: [http://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md](http://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md)
    @[JSON::Field(key: "fsType")]
    @[YAML::Field(key: "fsType")]
    property fs_type : String | Nil

    # Optional: Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: http://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: http://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md)
    @[JSON::Field(key: "readOnly")]
    @[YAML::Field(key: "readOnly")]
    property read_only : Bool | Nil

    # volume id used to identify the volume in cinder More info: [http://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md](http://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md)
    @[JSON::Field(key: "volumeID")]
    @[YAML::Field(key: "volumeID")]
    property volume_id : String

    def initialize(*, @fs_type : String | Nil = nil, @read_only : Bool | Nil = nil, @volume_id : String)
    end
  end
end
