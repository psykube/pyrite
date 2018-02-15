# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents downward API info for projecting into a projected volume. Note that this is identical to a downwardAPI volume source without the default mode.
  class Api::Core::V1::DownwardAPIProjection
    # Items is a list of DownwardAPIVolume file
    property items : Array(Api::Core::V1::DownwardAPIVolumeFile) | Nil

    ::YAML.mapping({
      items: {type: Array(Api::Core::V1::DownwardAPIVolumeFile), nilable: true, key: "items", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      items: {type: Array(Api::Core::V1::DownwardAPIVolumeFile), nilable: true, key: "items", getter: false, setter: false},
    }, true)

    def initialize(*, @items : Array | Nil = nil)
    end
  end
end
