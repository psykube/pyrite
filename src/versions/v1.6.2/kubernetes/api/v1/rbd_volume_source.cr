# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents a Rados Block Device mount that lasts the lifetime of a pod. RBD volumes support ownership management and SELinux relabeling.
  class Kubernetes::Api::V1::RBDVolumeSource
    # Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: [http://kubernetes.io/docs/user-guide/volumes#rbd](http://kubernetes.io/docs/user-guide/volumes#rbd)
    property fs_type : String | Nil

    # The rados image name. More info: [http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it](http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it)
    property image : String

    # Keyring is the path to key ring for RBDUser. Default is [/etc/ceph/keyring. More info: http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it](/etc/ceph/keyring. More info: http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it)
    property keyring : String | Nil

    # A collection of Ceph monitors. More info: [http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it](http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it)
    property monitors : Array(String)

    # The rados pool name. Default is rbd. More info: [http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it.](http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it.)
    property pool : String | Nil

    # ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: [http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it](http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it)
    property read_only : Bool | Nil

    # SecretRef is name of the authentication secret for RBDUser. If provided overrides keyring. Default is nil. More info: [http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it](http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it)
    property secret_ref : Kubernetes::Api::V1::LocalObjectReference | Nil

    # The rados user name. Default is admin. More info: [http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it](http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it)
    property user : String | Nil

    YAML.mapping({
      fs_type:    {type: String, nilable: true, key: "fsType"},
      image:      {type: String, nilable: false, key: "image"},
      keyring:    {type: String, nilable: true, key: "keyring"},
      monitors:   {type: Array(String), nilable: false, key: "monitors"},
      pool:       {type: String, nilable: true, key: "pool"},
      read_only:  {type: Bool, nilable: true, key: "readOnly"},
      secret_ref: {type: Kubernetes::Api::V1::LocalObjectReference, nilable: true, key: "secretRef"},
      user:       {type: String, nilable: true, key: "user"},
    }, true)

    JSON.mapping({
      fs_type:    {type: String, nilable: true, key: "fsType"},
      image:      {type: String, nilable: false, key: "image"},
      keyring:    {type: String, nilable: true, key: "keyring"},
      monitors:   {type: Array(String), nilable: false, key: "monitors"},
      pool:       {type: String, nilable: true, key: "pool"},
      read_only:  {type: Bool, nilable: true, key: "readOnly"},
      secret_ref: {type: Kubernetes::Api::V1::LocalObjectReference, nilable: true, key: "secretRef"},
      user:       {type: String, nilable: true, key: "user"},
    }, true)

    def initialize(*, @fs_type : String | Nil = nil, @image : String | Nil = nil, @keyring : String | Nil = nil, @monitors : Array | Nil = nil, @pool : String | Nil = nil, @read_only : Bool | Nil = nil, @secret_ref : Kubernetes::Api::V1::LocalObjectReference | Nil = nil, @user : String | Nil = nil)
    end
  end
end
