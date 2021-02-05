# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents an ISCSI disk. ISCSI volumes can only be mounted as [read/write once. ISCSI volumes support ownership management and SELinux relabeling.](read/write once. ISCSI volumes support ownership management and SELinux relabeling.)
  class Api::Core::V1::ISCSIVolumeSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # whether support iSCSI Discovery CHAP authentication
    @[::JSON::Field(key: "chapAuthDiscovery")]
    @[::YAML::Field(key: "chapAuthDiscovery")]
    property chap_auth_discovery : Bool | Nil

    # whether support iSCSI Session CHAP authentication
    @[::JSON::Field(key: "chapAuthSession")]
    @[::YAML::Field(key: "chapAuthSession")]
    property chap_auth_session : Bool | Nil

    # Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: [https://kubernetes.io/docs/concepts/storage/volumes#iscsi](https://kubernetes.io/docs/concepts/storage/volumes#iscsi)
    @[::JSON::Field(key: "fsType")]
    @[::YAML::Field(key: "fsType")]
    property fs_type : String | Nil

    # Custom iSCSI initiator name. If initiatorName is specified with iscsiInterface simultaneously, new iSCSI interface <target portal>:<volume name> will be created for the connection.
    @[::JSON::Field(key: "initiatorName")]
    @[::YAML::Field(key: "initiatorName")]
    property initiator_name : String | Nil

    # Target iSCSI Qualified Name.
    @[::JSON::Field(key: "iqn")]
    @[::YAML::Field(key: "iqn")]
    property iqn : String

    # Optional: Defaults to 'default' (tcp). iSCSI interface name that uses an iSCSI transport.
    @[::JSON::Field(key: "iscsiInterface")]
    @[::YAML::Field(key: "iscsiInterface")]
    property iscsi_interface : String | Nil

    # iSCSI target lun number.
    @[::JSON::Field(key: "lun")]
    @[::YAML::Field(key: "lun")]
    property lun : Int32

    # iSCSI target portal List. The portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
    @[::JSON::Field(key: "portals")]
    @[::YAML::Field(key: "portals")]
    property portals : Array(String) | Nil

    # ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false.
    @[::JSON::Field(key: "readOnly")]
    @[::YAML::Field(key: "readOnly")]
    property read_only : Bool | Nil

    # CHAP secret for iSCSI target and initiator authentication
    @[::JSON::Field(key: "secretRef")]
    @[::YAML::Field(key: "secretRef")]
    property secret_ref : Api::Core::V1::LocalObjectReference | Nil

    # iSCSI target portal. The portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
    @[::JSON::Field(key: "targetPortal")]
    @[::YAML::Field(key: "targetPortal")]
    property target_portal : String

    def initialize(*, @chap_auth_discovery : Bool | Nil = nil, @chap_auth_session : Bool | Nil = nil, @fs_type : String | Nil = nil, @initiator_name : String | Nil = nil, @iqn : String, @iscsi_interface : String | Nil = nil, @lun : Int32, @portals : Array | Nil = nil, @read_only : Bool | Nil = nil, @secret_ref : Api::Core::V1::LocalObjectReference | Nil = nil, @target_portal : String)
    end
  end
end
