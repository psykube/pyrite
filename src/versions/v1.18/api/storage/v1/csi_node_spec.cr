# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CSINodeSpec holds information about the specification of all CSI drivers installed on a node
  class Api::Storage::V1::CSINodeSpec
    # drivers is a list of information of all CSI Drivers existing on a node. If all drivers in the list are uninstalled, this can become empty.
    property drivers : Array(Api::Storage::V1::CSINodeDriver)

    ::YAML.mapping({
      drivers: {type: Array(Api::Storage::V1::CSINodeDriver), nilable: false, key: "drivers", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      drivers: {type: Array(Api::Storage::V1::CSINodeDriver), nilable: false, key: "drivers", getter: false, setter: false},
    }, true)

    def initialize(*, @drivers : Array)
    end
  end
end
