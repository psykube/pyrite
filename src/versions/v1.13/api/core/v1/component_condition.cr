# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Information about the condition of a component.
  class Api::Core::V1::ComponentCondition
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Condition error code for a component. For example, a health check error code.
    @[::JSON::Field(key: "error")]
    @[::YAML::Field(key: "error")]
    property error : String | Nil

    # Message about the condition for a component. For example, information about a health check.
    @[::JSON::Field(key: "message")]
    @[::YAML::Field(key: "message")]
    property message : String | Nil

    # Status of the condition for a component. Valid values for "Healthy": "True", "False", or "Unknown".
    @[::JSON::Field(key: "status")]
    @[::YAML::Field(key: "status")]
    property status : String

    # Type of condition for a component. Valid value: "Healthy"
    @[::JSON::Field(key: "type")]
    @[::YAML::Field(key: "type")]
    property type : String

    def initialize(*, @error : String | Nil = nil, @message : String | Nil = nil, @status : String, @type : String)
    end
  end
end
