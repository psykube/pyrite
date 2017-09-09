# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents an ISCSI disk. ISCSI volumes can only be mounted as [read/write once. ISCSI volumes support ownership management and SELinux relabeling.](read/write once. ISCSI volumes support ownership management and SELinux relabeling.)
  class Kubernetes::Api::V1::ISCSIVolumeSource
    # whether support iSCSI Discovery CHAP authentication
    property chap_auth_discovery : Bool | Nil

    # whether support iSCSI Session CHAP authentication
    property chap_auth_session : Bool | Nil

    # Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: [https://kubernetes.io/docs/concepts/storage/volumes#iscsi](https://kubernetes.io/docs/concepts/storage/volumes#iscsi)
    property fs_type : String | Nil

    # Target iSCSI Qualified Name.
    property iqn : String

    # Optional: Defaults to 'default' (tcp). iSCSI interface name that uses an iSCSI transport.
    property iscsi_interface : String | Nil

    # iSCSI target lun number.
    property lun : Int32

    # iSCSI target portal List. The portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
    property portals : Array(String) | Nil

    # ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false.
    property read_only : Bool | Nil

    # CHAP secret for iSCSI target and initiator authentication
    property secret_ref : Kubernetes::Api::V1::LocalObjectReference | Nil

    # iSCSI target portal. The portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
    property target_portal : String

    YAML.mapping({
      chap_auth_discovery: {type: Bool, nilable: true, key: "chapAuthDiscovery"},
      chap_auth_session:   {type: Bool, nilable: true, key: "chapAuthSession"},
      fs_type:             {type: String, nilable: true, key: "fsType"},
      iqn:                 {type: String, nilable: false, key: "iqn"},
      iscsi_interface:     {type: String, nilable: true, key: "iscsiInterface"},
      lun:                 {type: Int32, nilable: false, key: "lun"},
      portals:             {type: Array(String), nilable: true, key: "portals"},
      read_only:           {type: Bool, nilable: true, key: "readOnly"},
      secret_ref:          {type: Kubernetes::Api::V1::LocalObjectReference, nilable: true, key: "secretRef"},
      target_portal:       {type: String, nilable: false, key: "targetPortal"},
    }, true)

    JSON.mapping({
      chap_auth_discovery: {type: Bool, nilable: true, key: "chapAuthDiscovery"},
      chap_auth_session:   {type: Bool, nilable: true, key: "chapAuthSession"},
      fs_type:             {type: String, nilable: true, key: "fsType"},
      iqn:                 {type: String, nilable: false, key: "iqn"},
      iscsi_interface:     {type: String, nilable: true, key: "iscsiInterface"},
      lun:                 {type: Int32, nilable: false, key: "lun"},
      portals:             {type: Array(String), nilable: true, key: "portals"},
      read_only:           {type: Bool, nilable: true, key: "readOnly"},
      secret_ref:          {type: Kubernetes::Api::V1::LocalObjectReference, nilable: true, key: "secretRef"},
      target_portal:       {type: String, nilable: false, key: "targetPortal"},
    }, true)

    def initialize(*, @chap_auth_discovery : Bool | Nil = nil, @chap_auth_session : Bool | Nil = nil, @fs_type : String | Nil = nil, @iqn : String | Nil = nil, @iscsi_interface : String | Nil = nil, @lun : Int32 | Nil = nil, @portals : Array | Nil = nil, @read_only : Bool | Nil = nil, @secret_ref : Kubernetes::Api::V1::LocalObjectReference | Nil = nil, @target_portal : String | Nil = nil)
    end
  end
end
