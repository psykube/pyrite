# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # IDRange provides a [min/max of an allowed range of IDs.](min/max of an allowed range of IDs.)
  class Api::Policy::V1beta1::IDRange < Kubernetes::Spec
    # max is the end of the range, inclusive.
    @[::JSON::Field(key: "max")]
    @[::YAML::Field(key: "max")]
    property max : Int32

    # min is the start of the range, inclusive.
    @[::JSON::Field(key: "min")]
    @[::YAML::Field(key: "min")]
    property min : Int32

    def initialize(*, @max : Int32, @min : Int32)
    end
  end
end
