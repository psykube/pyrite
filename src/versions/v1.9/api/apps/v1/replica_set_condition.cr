# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ReplicaSetCondition describes the state of a replica set at a certain point.
  class Api::Apps::V1::ReplicaSetCondition
    include ::JSON::Serializable
    include ::YAML::Serializable

    # The last time the condition transitioned from one status to another.
    @[JSON::Field(key: "lastTransitionTime")]
    @[YAML::Field(key: "lastTransitionTime")]
    property last_transition_time : Time | Nil

    # A human readable message indicating details about the transition.
    @[JSON::Field(key: "message")]
    @[YAML::Field(key: "message")]
    property message : String | Nil

    # The reason for the condition's last transition.
    @[JSON::Field(key: "reason")]
    @[YAML::Field(key: "reason")]
    property reason : String | Nil

    # Status of the condition, one of True, False, Unknown.
    @[JSON::Field(key: "status")]
    @[YAML::Field(key: "status")]
    property status : String

    # Type of replica set condition.
    @[JSON::Field(key: "type")]
    @[YAML::Field(key: "type")]
    property type : String

    def initialize(*, @last_transition_time : Time | Nil = nil, @message : String | Nil = nil, @reason : String | Nil = nil, @status : String, @type : String)
    end
  end
end
