# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # FlowSchemaStatus represents the current state of a FlowSchema.
  class Api::Flowcontrol::V1alpha1::FlowSchemaStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # `conditions` is a list of the current states of FlowSchema.
    @[JSON::Field(key: "conditions")]
    @[YAML::Field(key: "conditions")]
    property conditions : Array(Api::Flowcontrol::V1alpha1::FlowSchemaCondition) | Nil

    def initialize(*, @conditions : Array | Nil = nil)
    end
  end
end
