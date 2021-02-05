# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # DeploymentCondition describes the state of a deployment at a certain point.
  class Api::Apps::V1::DeploymentCondition
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Last time the condition transitioned from one status to another.
    @[::JSON::Field(key: "lastTransitionTime")]
    @[::YAML::Field(key: "lastTransitionTime")]
    property last_transition_time : Time | Nil

    # The last time this condition was updated.
    @[::JSON::Field(key: "lastUpdateTime")]
    @[::YAML::Field(key: "lastUpdateTime")]
    property last_update_time : Time | Nil

    # A human readable message indicating details about the transition.
    @[::JSON::Field(key: "message")]
    @[::YAML::Field(key: "message")]
    property message : String | Nil

    # The reason for the condition's last transition.
    @[::JSON::Field(key: "reason")]
    @[::YAML::Field(key: "reason")]
    property reason : String | Nil

    # Status of the condition, one of True, False, Unknown.
    @[::JSON::Field(key: "status")]
    @[::YAML::Field(key: "status")]
    property status : String

    # Type of deployment condition.
    @[::JSON::Field(key: "type")]
    @[::YAML::Field(key: "type")]
    property type : String

    def initialize(*, @last_transition_time : Time | Nil = nil, @last_update_time : Time | Nil = nil, @message : String | Nil = nil, @reason : String | Nil = nil, @status : String, @type : String)
    end
  end
end
