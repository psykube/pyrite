# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Describes the state of the storageVersion at a certain point.
  class Api::Apiserverinternal::V1alpha1::StorageVersionCondition
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Last time the condition transitioned from one status to another.
    @[JSON::Field(key: "lastTransitionTime")]
    @[YAML::Field(key: "lastTransitionTime")]
    property last_transition_time : Time | Nil

    # A human readable message indicating details about the transition.
    @[JSON::Field(key: "message")]
    @[YAML::Field(key: "message")]
    property message : String | Nil

    # If set, this represents the .metadata.generation that the condition was set based upon.
    @[JSON::Field(key: "observedGeneration")]
    @[YAML::Field(key: "observedGeneration")]
    property observed_generation : Int32 | Nil

    # The reason for the condition's last transition.
    @[JSON::Field(key: "reason")]
    @[YAML::Field(key: "reason")]
    property reason : String

    # Status of the condition, one of True, False, Unknown.
    @[JSON::Field(key: "status")]
    @[YAML::Field(key: "status")]
    property status : String

    # Type of the condition.
    @[JSON::Field(key: "type")]
    @[YAML::Field(key: "type")]
    property type : String

    def initialize(*, @last_transition_time : Time | Nil = nil, @message : String | Nil = nil, @observed_generation : Int32 | Nil = nil, @reason : String, @status : String, @type : String)
    end
  end
end
