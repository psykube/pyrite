# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # FlowSchemaStatus represents the current state of a FlowSchema.
  class Api::Flowcontrol::V1alpha1::FlowSchemaStatus
    # `conditions` is a list of the current states of FlowSchema.
    property conditions : Array(Api::Flowcontrol::V1alpha1::FlowSchemaCondition) | Nil

    ::YAML.mapping({
      conditions: {type: Array(Api::Flowcontrol::V1alpha1::FlowSchemaCondition), nilable: true, key: "conditions", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      conditions: {type: Array(Api::Flowcontrol::V1alpha1::FlowSchemaCondition), nilable: true, key: "conditions", getter: false, setter: false},
    }, true)

    def initialize(*, @conditions : Array | Nil = nil)
    end
  end
end
