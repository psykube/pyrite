# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Local represents directly-attached storage with node affinity
  class Api::Core::V1::LocalVolumeSource
    # The full path to the volume on the node For alpha, this path must be a directory Once block as a source is supported, then this path can point to a block device
    property path : String

    ::YAML.mapping({
      path: {type: String, nilable: false, key: "path", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      path: {type: String, nilable: false, key: "path", getter: false, setter: false},
    }, true)

    def initialize(*, @path : String)
    end
  end
end
