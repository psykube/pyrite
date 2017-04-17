# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# FlexVolume represents a generic volume resource that is provisioned/attached using an exec based plugin.This is an alpha feature and may change in future.
class Pyrite::V1_6_1::Kubernetes::Api::V1::FlexVolumeSource
  # Driver is the name of the driver to use for this volume.
  property driver : String

  # Filesystem type to mount.Must be a filesystem type supported by the host operating system.Ex."ext4", "xfs", "ntfs".The default filesystem depends on FlexVolume script.
  property fs_type : String?

  # Optional: Extra command options if any.
  property options : Hash(String, String)?

  # Optional: Defaults to false (read/write).ReadOnly here will force the ReadOnly setting in VolumeMounts.
  property read_only : Bool?

  # Optional: SecretRef is reference to the secret object containing sensitive information to pass to the plugin scripts.This may be empty if no secret object is specified.If the secret object contains more than one secret, all secrets are passed to the plugin scripts.
  property secret_ref : ::Pyrite::V1_6_1::Kubernetes::Api::V1::LocalObjectReference

  YAML.mapping({driver:     {type: String, nilable: false, key: driver, getter: false, setter: false},
                fs_type:    {type: String, nilable: true, key: fsType, getter: false, setter: false},
                options:    {type: Hash(String, String), nilable: true, key: options, getter: false, setter: false},
                read_only:  {type: Bool, nilable: true, key: readOnly, getter: false, setter: false},
                secret_ref: {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::LocalObjectReference, nilable: true, key: secretRef, getter: false, setter: false}}, true)

  JSON.mapping({driver:     {type: String, nilable: false, key: driver, getter: false, setter: false},
                fs_type:    {type: String, nilable: true, key: fsType, getter: false, setter: false},
                options:    {type: Hash(String, String), nilable: true, key: options, getter: false, setter: false},
                read_only:  {type: Bool, nilable: true, key: readOnly, getter: false, setter: false},
                secret_ref: {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::LocalObjectReference, nilable: true, key: secretRef, getter: false, setter: false}}, true)

  def initialize(@driver, @fs_type = nil, @options = nil, @read_only = nil, @secret_ref = nil)
  end
end
