# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CSINodeSpec holds information about the specification of all CSI drivers installed on a node
  class Api::Storage::V1::CSINodeSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # drivers is a list of information of all CSI Drivers existing on a node. If all drivers in the list are uninstalled, this can become empty.
    @[::JSON::Field(key: "drivers")]
    @[::YAML::Field(key: "drivers")]
    property drivers : Array(Api::Storage::V1::CSINodeDriver)

    def initialize(*, @drivers : Array)
    end
  end
end
