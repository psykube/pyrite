require "yaml"
require "json"

# ScaleIOVolumeSource represents a persistent ScaleIO volume
class K8S::V1_6_1::Kubernetes::Api::V1::ScaleIOVolumeSource
  # Filesystem type to mount.Must be a filesystem type supported by the host operating system.Ex."ext4", "xfs", "ntfs".Implicitly inferred to be "ext4" if unspecified.
  property fs_type : String?

  # The host address of the ScaleIO API Gateway.
  property gateway : String

  # The name of the Protection Domain for the configured storage (defaults to "default").
  property protection_domain : String?

  # Defaults to false (read/write).ReadOnly here will force the ReadOnly setting in VolumeMounts.
  property read_only : Bool?

  # SecretRef references to the secret for ScaleIO user and other sensitive information.If this is not provided, Login operation will fail.
  property secret_ref : ::K8S::V1_6_1::Kubernetes::Api::V1::LocalObjectReference

  # Flag to enable/disable SSL communication with Gateway, default false
  property ssl_enabled : Bool?

  # Indicates whether the storage for a volume should be thick or thin (defaults to "thin").
  property storage_mode : String?

  # The Storage Pool associated with the protection domain (defaults to "default").
  property storage_pool : String?

  # The name of the storage system as configured in ScaleIO.
  property system : String

  # The name of a volume already created in the ScaleIO system that is associated with this volume source.
  property volume_name : String?

  YAML.mapping({fs_type:           {type: String, nilable: true, key: fsType, getter: false, setter: false},
                gateway:           {type: String, nilable: false, key: gateway, getter: false, setter: false},
                protection_domain: {type: String, nilable: true, key: protectionDomain, getter: false, setter: false},
                read_only:         {type: Bool, nilable: true, key: readOnly, getter: false, setter: false},
                secret_ref:        {type: ::K8S::V1_6_1::Kubernetes::Api::V1::LocalObjectReference, nilable: false, key: secretRef, getter: false, setter: false},
                ssl_enabled:       {type: Bool, nilable: true, key: sslEnabled, getter: false, setter: false},
                storage_mode:      {type: String, nilable: true, key: storageMode, getter: false, setter: false},
                storage_pool:      {type: String, nilable: true, key: storagePool, getter: false, setter: false},
                system:            {type: String, nilable: false, key: system, getter: false, setter: false},
                volume_name:       {type: String, nilable: true, key: volumeName, getter: false, setter: false}}, true)

  JSON.mapping({fs_type:           {type: String, nilable: true, key: fsType, getter: false, setter: false},
                gateway:           {type: String, nilable: false, key: gateway, getter: false, setter: false},
                protection_domain: {type: String, nilable: true, key: protectionDomain, getter: false, setter: false},
                read_only:         {type: Bool, nilable: true, key: readOnly, getter: false, setter: false},
                secret_ref:        {type: ::K8S::V1_6_1::Kubernetes::Api::V1::LocalObjectReference, nilable: false, key: secretRef, getter: false, setter: false},
                ssl_enabled:       {type: Bool, nilable: true, key: sslEnabled, getter: false, setter: false},
                storage_mode:      {type: String, nilable: true, key: storageMode, getter: false, setter: false},
                storage_pool:      {type: String, nilable: true, key: storagePool, getter: false, setter: false},
                system:            {type: String, nilable: false, key: system, getter: false, setter: false},
                volume_name:       {type: String, nilable: true, key: volumeName, getter: false, setter: false}}, true)

  def initialize(@gateway, @secret_ref, @system, @fs_type = nil, @protection_domain = nil, @read_only = nil, @ssl_enabled = nil, @storage_mode = nil, @storage_pool = nil, @volume_name = nil)
  end
end
