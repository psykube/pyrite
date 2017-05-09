# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_3
  # Represents a Rados Block Device mount that lasts the lifetime of a pod. RBD volumes support ownership management and SELinux relabeling.
  class Definitions::V1::RBDVolumeSource
    # Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: [http://kubernetes.io/docs/user-guide/volumes#rbd](http://kubernetes.io/docs/user-guide/volumes#rbd)
    property fs_type : String?

    # The rados image name. More info: [http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it](http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it)
    property image : String

    # Keyring is the path to key ring for RBDUser. Default is [/etc/ceph/keyring. More info: http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it](/etc/ceph/keyring. More info: http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it)
    property keyring : String?

    # A collection of Ceph monitors. More info: [http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it](http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it)
    property monitors : Array(String)

    # The rados pool name. Default is rbd. More info: [http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it.](http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it.)
    property pool : String?

    # ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: [http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it](http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it)
    property read_only : Bool?

    # SecretRef is name of the authentication secret for RBDUser. If provided overrides keyring. Default is nil. More info: [http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it](http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it)
    property secret_ref : V1::LocalObjectReference

    # The rados user name. Default is admin. More info: [http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it](http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it)
    property user : String?

    YAML.mapping({fs_type:    {type: String, nilable: true, key: fsType, getter: false, setter: false},
                  image:      {type: String, nilable: false, key: image, getter: false, setter: false},
                  keyring:    {type: String, nilable: true, key: keyring, getter: false, setter: false},
                  monitors:   {type: Array(String), nilable: false, key: monitors, getter: false, setter: false},
                  pool:       {type: String, nilable: true, key: pool, getter: false, setter: false},
                  read_only:  {type: Bool, nilable: true, key: readOnly, getter: false, setter: false},
                  secret_ref: {type: V1::LocalObjectReference, nilable: true, key: secretRef, getter: false, setter: false},
                  user:       {type: String, nilable: true, key: user, getter: false, setter: false}}, true)

    JSON.mapping({fs_type:    {type: String, nilable: true, key: fsType, getter: false, setter: false},
                  image:      {type: String, nilable: false, key: image, getter: false, setter: false},
                  keyring:    {type: String, nilable: true, key: keyring, getter: false, setter: false},
                  monitors:   {type: Array(String), nilable: false, key: monitors, getter: false, setter: false},
                  pool:       {type: String, nilable: true, key: pool, getter: false, setter: false},
                  read_only:  {type: Bool, nilable: true, key: readOnly, getter: false, setter: false},
                  secret_ref: {type: V1::LocalObjectReference, nilable: true, key: secretRef, getter: false, setter: false},
                  user:       {type: String, nilable: true, key: user, getter: false, setter: false}}, true)

    def initialize(@fs_type : String? = nil, @image : String? = nil, @keyring : String? = nil, @monitors : Array? = nil, @pool : String? = nil, @read_only : Bool? = nil, @secret_ref : V1::LocalObjectReference = nil, @user : String? = nil)
    end
  end
end
