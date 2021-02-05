# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ScaleIOVolumeSource represents a persistent ScaleIO volume
  class Kubernetes::Api::V1::ScaleIOVolumeSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
    @[::JSON::Field(key: "fsType")]
    @[::YAML::Field(key: "fsType")]
    property fs_type : String | Nil

    # The host address of the ScaleIO API Gateway.
    @[::JSON::Field(key: "gateway")]
    @[::YAML::Field(key: "gateway")]
    property gateway : String

    # The name of the Protection Domain for the configured storage (defaults to "default").
    @[::JSON::Field(key: "protectionDomain")]
    @[::YAML::Field(key: "protectionDomain")]
    property protection_domain : String | Nil

    # Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)
    @[::JSON::Field(key: "readOnly")]
    @[::YAML::Field(key: "readOnly")]
    property read_only : Bool | Nil

    # SecretRef references to the secret for ScaleIO user and other sensitive information. If this is not provided, Login operation will fail.
    @[::JSON::Field(key: "secretRef")]
    @[::YAML::Field(key: "secretRef")]
    property secret_ref : Kubernetes::Api::V1::LocalObjectReference

    # Flag to [enable/disable SSL communication with Gateway, default false](enable/disable SSL communication with Gateway, default false)
    @[::JSON::Field(key: "sslEnabled")]
    @[::YAML::Field(key: "sslEnabled")]
    property ssl_enabled : Bool | Nil

    # Indicates whether the storage for a volume should be thick or thin (defaults to "thin").
    @[::JSON::Field(key: "storageMode")]
    @[::YAML::Field(key: "storageMode")]
    property storage_mode : String | Nil

    # The Storage Pool associated with the protection domain (defaults to "default").
    @[::JSON::Field(key: "storagePool")]
    @[::YAML::Field(key: "storagePool")]
    property storage_pool : String | Nil

    # The name of the storage system as configured in ScaleIO.
    @[::JSON::Field(key: "system")]
    @[::YAML::Field(key: "system")]
    property system : String

    # The name of a volume already created in the ScaleIO system that is associated with this volume source.
    @[::JSON::Field(key: "volumeName")]
    @[::YAML::Field(key: "volumeName")]
    property volume_name : String | Nil

    def initialize(*, @fs_type : String | Nil = nil, @gateway : String, @protection_domain : String | Nil = nil, @read_only : Bool | Nil = nil, @secret_ref : Kubernetes::Api::V1::LocalObjectReference, @ssl_enabled : Bool | Nil = nil, @storage_mode : String | Nil = nil, @storage_pool : String | Nil = nil, @system : String, @volume_name : String | Nil = nil)
    end
  end
end
