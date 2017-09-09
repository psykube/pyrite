# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ID Range provides a [min/max of an allowed range of IDs.](min/max of an allowed range of IDs.)
  class Kubernetes::Apis::Extensions::V1beta1::IDRange
    # Max is the end of the range, inclusive.
    property max : Int32

    # Min is the start of the range, inclusive.
    property min : Int32

    YAML.mapping({
      max: {type: Int32, nilable: false, key: "max"},
      min: {type: Int32, nilable: false, key: "min"},
    }, true)

    JSON.mapping({
      max: {type: Int32, nilable: false, key: "max"},
      min: {type: Int32, nilable: false, key: "min"},
    }, true)

    def initialize(*, @max : Int32 | Nil = nil, @min : Int32 | Nil = nil)
    end
  end
end
