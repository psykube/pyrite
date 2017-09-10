# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents a StorageOS persistent volume resource.
  class Kubernetes::Api::V1::StorageOSVolumeSource
    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
    property fs_type : String | Nil

    # Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)
    property read_only : Bool | Nil

    # SecretRef specifies the secret to use for obtaining the StorageOS API credentials.  If not specified, default values will be attempted.
    property secret_ref : Kubernetes::Api::V1::LocalObjectReference | Nil

    # VolumeName is the human-readable name of the StorageOS volume.  Volume names are only unique within a namespace.
    property volume_name : String | Nil

    # VolumeNamespace specifies the scope of the volume within StorageOS.  If no namespace is specified then the Pod's namespace will be used.  This allows the Kubernetes name scoping to be mirrored within StorageOS for tighter integration. Set VolumeName to any name to override the default behaviour. Set to "default" if you are not using namespaces within StorageOS. Namespaces that do not pre-exist within StorageOS will be created.
    property volume_namespace : String | Nil

    YAML.mapping({
      fs_type:          {type: String, nilable: true, key: "fsType"},
      read_only:        {type: Bool, nilable: true, key: "readOnly"},
      secret_ref:       {type: Kubernetes::Api::V1::LocalObjectReference, nilable: true, key: "secretRef"},
      volume_name:      {type: String, nilable: true, key: "volumeName"},
      volume_namespace: {type: String, nilable: true, key: "volumeNamespace"},
    }, true)

    JSON.mapping({
      fs_type:          {type: String, nilable: true, key: "fsType"},
      read_only:        {type: Bool, nilable: true, key: "readOnly"},
      secret_ref:       {type: Kubernetes::Api::V1::LocalObjectReference, nilable: true, key: "secretRef"},
      volume_name:      {type: String, nilable: true, key: "volumeName"},
      volume_namespace: {type: String, nilable: true, key: "volumeNamespace"},
    }, true)

    def initialize(*, @fs_type : String | Nil = nil, @read_only : Bool | Nil = nil, @secret_ref : Kubernetes::Api::V1::LocalObjectReference | Nil = nil, @volume_name : String | Nil = nil, @volume_namespace : String | Nil = nil)
    end
  end
end
