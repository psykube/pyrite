# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_5
  # Represents a Ceph Filesystem mount that lasts the lifetime of a pod Cephfs volumes do not support ownership management or SELinux relabeling.
  class Definitions::V1::CephFSVolumeSource
    # Required: Monitors is a collection of Ceph monitors More info: [http://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it](http://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it)
    property monitors : Array(String)

    # Optional: Used as the mounted root, rather than the full Ceph tree, default is /
    property path : String?

    # Optional: Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: http://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: http://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it)
    property read_only : Bool?

    # Optional: SecretFile is the path to key ring for User, default is [/etc/ceph/user.secret More info: http://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it](/etc/ceph/user.secret More info: http://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it)
    property secret_file : String?

    # Optional: SecretRef is reference to the authentication secret for User, default is empty. More info: [http://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it](http://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it)
    property secret_ref : V1::LocalObjectReference

    # Optional: User is the rados user name, default is admin More info: [http://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it](http://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it)
    property user : String?

    YAML.mapping({monitors:    {type: Array(String), nilable: false, key: monitors, getter: false, setter: false},
                  path:        {type: String, nilable: true, key: path, getter: false, setter: false},
                  read_only:   {type: Bool, nilable: true, key: readOnly, getter: false, setter: false},
                  secret_file: {type: String, nilable: true, key: secretFile, getter: false, setter: false},
                  secret_ref:  {type: V1::LocalObjectReference, nilable: true, key: secretRef, getter: false, setter: false},
                  user:        {type: String, nilable: true, key: user, getter: false, setter: false}}, true)

    JSON.mapping({monitors:    {type: Array(String), nilable: false, key: monitors, getter: false, setter: false},
                  path:        {type: String, nilable: true, key: path, getter: false, setter: false},
                  read_only:   {type: Bool, nilable: true, key: readOnly, getter: false, setter: false},
                  secret_file: {type: String, nilable: true, key: secretFile, getter: false, setter: false},
                  secret_ref:  {type: V1::LocalObjectReference, nilable: true, key: secretRef, getter: false, setter: false},
                  user:        {type: String, nilable: true, key: user, getter: false, setter: false}}, true)

    def initialize(@monitors : Array? = nil, @path : String? = nil, @read_only : Bool? = nil, @secret_file : String? = nil, @secret_ref : V1::LocalObjectReference = nil, @user : String? = nil)
    end
  end
end