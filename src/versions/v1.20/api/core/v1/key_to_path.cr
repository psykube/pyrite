# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Maps a string key to a path within a volume.
  class Api::Core::V1::KeyToPath
    include ::JSON::Serializable
    include ::YAML::Serializable

    # The key to project.
    @[::JSON::Field(key: "key")]
    @[::YAML::Field(key: "key")]
    property key : String

    # Optional: mode bits used to set permissions on this file. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
    @[::JSON::Field(key: "mode")]
    @[::YAML::Field(key: "mode")]
    property mode : Int32 | Nil

    # The relative path of the file to map the key to. May not be an absolute path. May not contain the path element '..'. May not start with the string '..'.
    @[::JSON::Field(key: "path")]
    @[::YAML::Field(key: "path")]
    property path : String

    def initialize(*, @key : String, @mode : Int32 | Nil = nil, @path : String)
    end
  end
end
