# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Adapts a Secret into a volume.
  #
  # The contents of the target Secret's Data field will be presented in a volume as files using the keys in the Data field as the file names. Secret volumes support ownership management and SELinux relabeling.
  class Kubernetes::Api::V1::SecretVolumeSource
    # Optional: mode bits to use on created files by default. Must be a value between 0 and 0777. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
    property default_mode : Int32 | Nil

    # If unspecified, each key-value pair in the Data field of the referenced Secret will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the Secret, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'.
    property items : Array(Kubernetes::Api::V1::KeyToPath) | Nil

    # Specify whether the Secret or it's keys must be defined
    property optional : Bool | Nil

    # Name of the secret in the pod's namespace to use. More info: [http://kubernetes.io/docs/user-guide/volumes#secrets](http://kubernetes.io/docs/user-guide/volumes#secrets)
    property secret_name : String | Nil

    ::YAML.mapping({
      default_mode: {type: Int32, nilable: true, key: "defaultMode", getter: false, setter: false},
      items:        {type: Array(Kubernetes::Api::V1::KeyToPath), nilable: true, key: "items", getter: false, setter: false},
      optional:     {type: Bool, nilable: true, key: "optional", getter: false, setter: false},
      secret_name:  {type: String, nilable: true, key: "secretName", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      default_mode: {type: Int32, nilable: true, key: "defaultMode", getter: false, setter: false},
      items:        {type: Array(Kubernetes::Api::V1::KeyToPath), nilable: true, key: "items", getter: false, setter: false},
      optional:     {type: Bool, nilable: true, key: "optional", getter: false, setter: false},
      secret_name:  {type: String, nilable: true, key: "secretName", getter: false, setter: false},
    }, true)

    def initialize(*, @default_mode : Int32 | Nil = nil, @items : Array | Nil = nil, @optional : Bool | Nil = nil, @secret_name : String | Nil = nil)
    end
  end
end
