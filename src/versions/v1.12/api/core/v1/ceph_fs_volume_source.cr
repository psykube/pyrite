# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents a Ceph Filesystem mount that lasts the lifetime of a pod Cephfs volumes do not support ownership management or SELinux relabeling.
  class Api::Core::V1::CephFSVolumeSource
    # Required: Monitors is a collection of Ceph monitors More info: [https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it](https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it)
    property monitors : Array(String)

    # Optional: Used as the mounted root, rather than the full Ceph tree, default is /
    property path : String | Nil

    # Optional: Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it)
    property read_only : Bool | Nil

    # Optional: SecretFile is the path to key ring for User, default is [/etc/ceph/user.secret More info: https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it](/etc/ceph/user.secret More info: https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it)
    property secret_file : String | Nil

    # Optional: SecretRef is reference to the authentication secret for User, default is empty. More info: [https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it](https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it)
    property secret_ref : Api::Core::V1::LocalObjectReference | Nil

    # Optional: User is the rados user name, default is admin More info: [https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it](https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it)
    property user : String | Nil

    ::YAML.mapping({
      monitors:    {type: Array(String), nilable: false, key: "monitors", getter: false, setter: false},
      path:        {type: String, nilable: true, key: "path", getter: false, setter: false},
      read_only:   {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
      secret_file: {type: String, nilable: true, key: "secretFile", getter: false, setter: false},
      secret_ref:  {type: Api::Core::V1::LocalObjectReference, nilable: true, key: "secretRef", getter: false, setter: false},
      user:        {type: String, nilable: true, key: "user", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      monitors:    {type: Array(String), nilable: false, key: "monitors", getter: false, setter: false},
      path:        {type: String, nilable: true, key: "path", getter: false, setter: false},
      read_only:   {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
      secret_file: {type: String, nilable: true, key: "secretFile", getter: false, setter: false},
      secret_ref:  {type: Api::Core::V1::LocalObjectReference, nilable: true, key: "secretRef", getter: false, setter: false},
      user:        {type: String, nilable: true, key: "user", getter: false, setter: false},
    }, true)

    def initialize(*, @monitors : Array, @path : String | Nil = nil, @read_only : Bool | Nil = nil, @secret_file : String | Nil = nil, @secret_ref : Api::Core::V1::LocalObjectReference | Nil = nil, @user : String | Nil = nil)
    end
  end
end
