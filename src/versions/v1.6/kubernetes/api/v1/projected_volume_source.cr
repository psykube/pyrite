# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents a projected volume source
  class Kubernetes::Api::V1::ProjectedVolumeSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Mode bits to use on created files by default. Must be a value between 0 and 0777. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
    @[JSON::Field(key: "defaultMode")]
    @[YAML::Field(key: "defaultMode")]
    property default_mode : Int32 | Nil

    # list of volume projections
    @[JSON::Field(key: "sources")]
    @[YAML::Field(key: "sources")]
    property sources : Array(Kubernetes::Api::V1::VolumeProjection)

    def initialize(*, @default_mode : Int32 | Nil = nil, @sources : Array)
    end
  end
end
