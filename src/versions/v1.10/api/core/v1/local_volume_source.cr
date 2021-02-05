# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Local represents directly-attached storage with node affinity
  class Api::Core::V1::LocalVolumeSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # The full path to the volume on the node For alpha, this path must be a directory Once block as a source is supported, then this path can point to a block device
    @[JSON::Field(key: "path")]
    @[YAML::Field(key: "path")]
    property path : String

    def initialize(*, @path : String)
    end
  end
end
