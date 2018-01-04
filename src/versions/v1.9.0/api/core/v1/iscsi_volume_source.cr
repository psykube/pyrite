# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents an ISCSI disk. ISCSI volumes can only be mounted as [read/write once. ISCSI volumes support ownership management and SELinux relabeling.](read/write once. ISCSI volumes support ownership management and SELinux relabeling.)
  class Api::Core::V1::ISCSIVolumeSource
    # whether support iSCSI Discovery CHAP authentication
    property chap_auth_discovery : Bool | Nil

    # whether support iSCSI Session CHAP authentication
    property chap_auth_session : Bool | Nil

    # Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: [https://kubernetes.io/docs/concepts/storage/volumes#iscsi](https://kubernetes.io/docs/concepts/storage/volumes#iscsi)
    property fs_type : String | Nil

    # Custom iSCSI Initiator Name. If initiatorName is specified with iscsiInterface simultaneously, new iSCSI interface <target portal>:<volume name> will be created for the connection.
    property initiator_name : String | Nil

    # Target iSCSI Qualified Name.
    property iqn : String

    # iSCSI Interface Name that uses an iSCSI transport. Defaults to 'default' (tcp).
    property iscsi_interface : String | Nil

    # iSCSI Target Lun number.
    property lun : Int32

    # iSCSI Target Portal List. The portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
    property portals : Array(String) | Nil

    # ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false.
    property read_only : Bool | Nil

    # CHAP Secret for iSCSI target and initiator authentication
    property secret_ref : Api::Core::V1::LocalObjectReference | Nil

    # iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
    property target_portal : String

    ::YAML.mapping({
      chap_auth_discovery: {type: Bool, nilable: true, key: "chapAuthDiscovery", getter: false, setter: false},
      chap_auth_session:   {type: Bool, nilable: true, key: "chapAuthSession", getter: false, setter: false},
      fs_type:             {type: String, nilable: true, key: "fsType", getter: false, setter: false},
      initiator_name:      {type: String, nilable: true, key: "initiatorName", getter: false, setter: false},
      iqn:                 {type: String, nilable: false, key: "iqn", getter: false, setter: false},
      iscsi_interface:     {type: String, nilable: true, key: "iscsiInterface", getter: false, setter: false},
      lun:                 {type: Int32, nilable: false, key: "lun", getter: false, setter: false},
      portals:             {type: Array(String), nilable: true, key: "portals", getter: false, setter: false},
      read_only:           {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
      secret_ref:          {type: Api::Core::V1::LocalObjectReference, nilable: true, key: "secretRef", getter: false, setter: false},
      target_portal:       {type: String, nilable: false, key: "targetPortal", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      chap_auth_discovery: {type: Bool, nilable: true, key: "chapAuthDiscovery", getter: false, setter: false},
      chap_auth_session:   {type: Bool, nilable: true, key: "chapAuthSession", getter: false, setter: false},
      fs_type:             {type: String, nilable: true, key: "fsType", getter: false, setter: false},
      initiator_name:      {type: String, nilable: true, key: "initiatorName", getter: false, setter: false},
      iqn:                 {type: String, nilable: false, key: "iqn", getter: false, setter: false},
      iscsi_interface:     {type: String, nilable: true, key: "iscsiInterface", getter: false, setter: false},
      lun:                 {type: Int32, nilable: false, key: "lun", getter: false, setter: false},
      portals:             {type: Array(String), nilable: true, key: "portals", getter: false, setter: false},
      read_only:           {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
      secret_ref:          {type: Api::Core::V1::LocalObjectReference, nilable: true, key: "secretRef", getter: false, setter: false},
      target_portal:       {type: String, nilable: false, key: "targetPortal", getter: false, setter: false},
    }, true)

    def initialize(*, @chap_auth_discovery : Bool | Nil = nil, @chap_auth_session : Bool | Nil = nil, @fs_type : String | Nil = nil, @initiator_name : String | Nil = nil, @iqn : String | Nil = nil, @iscsi_interface : String | Nil = nil, @lun : Int32 | Nil = nil, @portals : Array | Nil = nil, @read_only : Bool | Nil = nil, @secret_ref : Api::Core::V1::LocalObjectReference | Nil = nil, @target_portal : String | Nil = nil)
    end
  end
end
