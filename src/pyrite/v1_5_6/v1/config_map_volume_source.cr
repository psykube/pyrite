# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_6
  # Adapts a ConfigMap into a volume.
  #
  # The contents of the target ConfigMap's Data field will be presented in a volume as files using the keys in the Data field as the file names, unless the items element is populated with specific mappings of keys to paths. ConfigMap volumes support ownership management and SELinux relabeling.
  class Definitions::V1::ConfigMapVolumeSource
    # Optional: mode bits to use on created files by default. Must be a value between 0 and 0777. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
    property default_mode : Int32?

    # If unspecified, each key-value pair in the Data field of the referenced ConfigMap will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the ConfigMap, the volume setup will error. Paths must be relative and may not contain the '..' path or start with '..'.
    property items : Array(V1::KeyToPath)?

    # Name of the referent. More info: [http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)
    property name : String?

    YAML.mapping({default_mode: {type: Int32, nilable: true, key: defaultMode, getter: false, setter: false},
                  items:        {type: Array(V1::KeyToPath), nilable: true, key: items, getter: false, setter: false},
                  name:         {type: String, nilable: true, key: name, getter: false, setter: false}}, true)

    JSON.mapping({default_mode: {type: Int32, nilable: true, key: defaultMode, getter: false, setter: false},
                  items:        {type: Array(V1::KeyToPath), nilable: true, key: items, getter: false, setter: false},
                  name:         {type: String, nilable: true, key: name, getter: false, setter: false}}, true)

    def initialize(@default_mode : Int32? = nil, @items : Array? = nil, @name : String? = nil)
    end
  end
end
