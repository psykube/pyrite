# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_4
  # Maps a string key to a path within a volume.
  class Definitions::V1::KeyToPath
    # The key to project.
    property key : String

    # Optional: mode bits to use on this file, must be a value between 0 and 0777. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
    property mode : Int32?

    # The relative path of the file to map the key to. May not be an absolute path. May not contain the path element '..'. May not start with the string '..'.
    property path : String

    YAML.mapping({key:  {type: String, nilable: false, key: key, getter: false, setter: false},
                  mode: {type: Int32, nilable: true, key: mode, getter: false, setter: false},
                  path: {type: String, nilable: false, key: path, getter: false, setter: false}}, true)

    JSON.mapping({key:  {type: String, nilable: false, key: key, getter: false, setter: false},
                  mode: {type: Int32, nilable: true, key: mode, getter: false, setter: false},
                  path: {type: String, nilable: false, key: path, getter: false, setter: false}}, true)

    def initialize(@key : String? = nil, @mode : Int32? = nil, @path : String? = nil)
    end
  end
end
