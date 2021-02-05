# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CustomResourceDefinitionCondition contains details for the current condition of this pod.
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionCondition
    include ::JSON::Serializable
    include ::YAML::Serializable

    # lastTransitionTime last time the condition transitioned from one status to another.
    @[::JSON::Field(key: "lastTransitionTime")]
    @[::YAML::Field(key: "lastTransitionTime")]
    property last_transition_time : Time | Nil

    # message is a human-readable message indicating details about last transition.
    @[::JSON::Field(key: "message")]
    @[::YAML::Field(key: "message")]
    property message : String | Nil

    # reason is a unique, one-word, CamelCase reason for the condition's last transition.
    @[::JSON::Field(key: "reason")]
    @[::YAML::Field(key: "reason")]
    property reason : String | Nil

    # status is the status of the condition. Can be True, False, Unknown.
    @[::JSON::Field(key: "status")]
    @[::YAML::Field(key: "status")]
    property status : String

    # type is the type of the condition. Types include Established, NamesAccepted and Terminating.
    @[::JSON::Field(key: "type")]
    @[::YAML::Field(key: "type")]
    property type : String

    def initialize(*, @last_transition_time : Time | Nil = nil, @message : String | Nil = nil, @reason : String | Nil = nil, @status : String, @type : String)
    end
  end
end
