# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents a Rados Block Device mount that lasts the lifetime of a pod. RBD volumes support ownership management and SELinux relabeling.
  class Api::Core::V1::RBDPersistentVolumeSource < Kubernetes::Spec
    # Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: [https://kubernetes.io/docs/concepts/storage/volumes#rbd](https://kubernetes.io/docs/concepts/storage/volumes#rbd)
    @[::JSON::Field(key: "fsType")]
    @[::YAML::Field(key: "fsType")]
    property fs_type : String | Nil

    # The rados image name. More info: [https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it)
    @[::JSON::Field(key: "image")]
    @[::YAML::Field(key: "image")]
    property image : String

    # Keyring is the path to key ring for RBDUser. Default is [/etc/ceph/keyring. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](/etc/ceph/keyring. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it)
    @[::JSON::Field(key: "keyring")]
    @[::YAML::Field(key: "keyring")]
    property keyring : String | Nil

    # A collection of Ceph monitors. More info: [https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it)
    @[::JSON::Field(key: "monitors")]
    @[::YAML::Field(key: "monitors")]
    property monitors : Array(String)

    # The rados pool name. Default is rbd. More info: [https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it)
    @[::JSON::Field(key: "pool")]
    @[::YAML::Field(key: "pool")]
    property pool : String | Nil

    # ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: [https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it)
    @[::JSON::Field(key: "readOnly")]
    @[::YAML::Field(key: "readOnly")]
    property read_only : Bool | Nil

    # SecretRef is name of the authentication secret for RBDUser. If provided overrides keyring. Default is nil. More info: [https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it)
    @[::JSON::Field(key: "secretRef")]
    @[::YAML::Field(key: "secretRef")]
    property secret_ref : Api::Core::V1::SecretReference | Nil

    # The rados user name. Default is admin. More info: [https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it)
    @[::JSON::Field(key: "user")]
    @[::YAML::Field(key: "user")]
    property user : String | Nil

    def initialize(*, @fs_type : String | Nil = nil, @image : String, @keyring : String | Nil = nil, @monitors : Array, @pool : String | Nil = nil, @read_only : Bool | Nil = nil, @secret_ref : Api::Core::V1::SecretReference | Nil = nil, @user : String | Nil = nil)
    end
  end
end
