# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents a projected volume source
  class Api::Core::V1::ProjectedVolumeSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
    @[::JSON::Field(key: "defaultMode")]
    @[::YAML::Field(key: "defaultMode")]
    property default_mode : Int32 | Nil

    # list of volume projections
    @[::JSON::Field(key: "sources")]
    @[::YAML::Field(key: "sources")]
    property sources : Array(Api::Core::V1::VolumeProjection) | Nil

    def initialize(*, @default_mode : Int32 | Nil = nil, @sources : Array | Nil = nil)
    end
  end
end
