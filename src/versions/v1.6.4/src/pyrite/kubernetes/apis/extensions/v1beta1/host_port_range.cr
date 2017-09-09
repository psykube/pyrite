# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Host Port Range defines a range of host ports that will be enabled by a policy for pods to use.  It requires both the start and end to be defined.
  class Kubernetes::Apis::Extensions::V1beta1::HostPortRange
    # max is the end of the range, inclusive.
    property max : Int32

    # min is the start of the range, inclusive.
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
