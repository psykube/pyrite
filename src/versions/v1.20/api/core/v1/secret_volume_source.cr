# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Adapts a Secret into a volume.
  #
  # The contents of the target Secret's Data field will be presented in a volume as files using the keys in the Data field as the file names. Secret volumes support ownership management and SELinux relabeling.
  class Api::Core::V1::SecretVolumeSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
    @[JSON::Field(key: "defaultMode")]
    @[YAML::Field(key: "defaultMode")]
    property default_mode : Int32 | Nil

    # If unspecified, each key-value pair in the Data field of the referenced Secret will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the Secret, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'.
    @[JSON::Field(key: "items")]
    @[YAML::Field(key: "items")]
    property items : Array(Api::Core::V1::KeyToPath) | Nil

    # Specify whether the Secret or its keys must be defined
    @[JSON::Field(key: "optional")]
    @[YAML::Field(key: "optional")]
    property optional : Bool | Nil

    # Name of the secret in the pod's namespace to use. More info: [https://kubernetes.io/docs/concepts/storage/volumes#secret](https://kubernetes.io/docs/concepts/storage/volumes#secret)
    @[JSON::Field(key: "secretName")]
    @[YAML::Field(key: "secretName")]
    property secret_name : String | Nil

    def initialize(*, @default_mode : Int32 | Nil = nil, @items : Array | Nil = nil, @optional : Bool | Nil = nil, @secret_name : String | Nil = nil)
    end
  end
end
