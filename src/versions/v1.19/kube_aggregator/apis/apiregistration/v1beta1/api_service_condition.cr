# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # APIServiceCondition describes the state of an APIService at a particular point
  class KubeAggregator::Apis::Apiregistration::V1beta1::APIServiceCondition
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Last time the condition transitioned from one status to another.
    @[::JSON::Field(key: "lastTransitionTime")]
    @[::YAML::Field(key: "lastTransitionTime")]
    property last_transition_time : Time | Nil

    # Human-readable message indicating details about last transition.
    @[::JSON::Field(key: "message")]
    @[::YAML::Field(key: "message")]
    property message : String | Nil

    # Unique, one-word, CamelCase reason for the condition's last transition.
    @[::JSON::Field(key: "reason")]
    @[::YAML::Field(key: "reason")]
    property reason : String | Nil

    # Status is the status of the condition. Can be True, False, Unknown.
    @[::JSON::Field(key: "status")]
    @[::YAML::Field(key: "status")]
    property status : String

    # Type is the type of the condition.
    @[::JSON::Field(key: "type")]
    @[::YAML::Field(key: "type")]
    property type : String

    def initialize(*, @last_transition_time : Time | Nil = nil, @message : String | Nil = nil, @reason : String | Nil = nil, @status : String, @type : String)
    end
  end
end
