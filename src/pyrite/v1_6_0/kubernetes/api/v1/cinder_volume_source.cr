# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# Represents a cinder volume resource in Openstack. A Cinder volume must exist before mounting to a container. The volume must also be in the same region as the kubelet. Cinder volumes support ownership management and SELinux relabeling.
class Pyrite::V1_6_0::Kubernetes::Api::V1::CinderVolumeSource
  # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: [http://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md](http://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md)
  property fs_type : String?

  # Optional: Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: http://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: http://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md)
  property read_only : Bool?

  # volume id used to identify the volume in cinder More info: [http://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md](http://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md)
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
