# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Host Port Range defines a range of host ports that will be enabled by a policy for pods to use.  It requires both the start and end to be defined.
  class Api::Extensions::V1beta1::HostPortRange
    include ::JSON::Serializable
    include ::YAML::Serializable

    # max is the end of the range, inclusive.
    @[JSON::Field(key: "max")]
    @[YAML::Field(key: "max")]
    property max : Int32

    # min is the start of the range, inclusive.
    @[JSON::Field(key: "min")]
    @[YAML::Field(key: "min")]
    property min : Int32

    def initialize(*, @max : Int32, @min : Int32)
    end
  end
end
