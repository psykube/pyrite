# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PriorityLevelConfigurationStatus represents the current state of a "request-priority".
  class Api::Flowcontrol::V1beta1::PriorityLevelConfigurationStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # `conditions` is the current state of "request-priority".
    @[JSON::Field(key: "conditions")]
    @[YAML::Field(key: "conditions")]
    property conditions : Array(Api::Flowcontrol::V1beta1::PriorityLevelConfigurationCondition) | Nil

    def initialize(*, @conditions : Array | Nil = nil)
    end
  end
end
