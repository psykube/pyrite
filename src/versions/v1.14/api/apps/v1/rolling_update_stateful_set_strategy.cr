# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # RollingUpdateStatefulSetStrategy is used to communicate parameter for RollingUpdateStatefulSetStrategyType.
  class Api::Apps::V1::RollingUpdateStatefulSetStrategy
    # Partition indicates the ordinal at which the StatefulSet should be partitioned. Default value is 0.
    property partition : Int32 | Nil

    ::YAML.mapping({
      partition: {type: Int32, nilable: true, key: "partition", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      partition: {type: Int32, nilable: true, key: "partition", getter: false, setter: false},
    }, true)

    def initialize(*, @partition : Int32 | Nil = nil)
    end
  end
end
