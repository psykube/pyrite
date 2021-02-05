# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents downward API info for projecting into a projected volume. Note that this is identical to a downwardAPI volume source without the default mode.
  class Kubernetes::Api::V1::DownwardAPIProjection
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Items is a list of DownwardAPIVolume file
    @[JSON::Field(key: "items")]
    @[YAML::Field(key: "items")]
    property items : Array(Kubernetes::Api::V1::DownwardAPIVolumeFile) | Nil

    def initialize(*, @items : Array | Nil = nil)
    end
  end
end
