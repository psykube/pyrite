# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ReplicationControllerCondition describes the state of a replication controller at a certain point.
  class Kubernetes::Api::V1::ReplicationControllerCondition
    # The last time the condition transitioned from one status to another.
    property last_transition_time : Time | Nil

    # A human readable message indicating details about the transition.
    property message : String | Nil

    # The reason for the condition's last transition.
    property reason : String | Nil

    # Status of the condition, one of True, False, Unknown.
    property status : String

    # Type of replication controller condition.
    property type : String

    YAML.mapping({
      last_transition_time: {type: Time, nilable: true, key: "lastTransitionTime"},
      message:              {type: String, nilable: true, key: "message"},
      reason:               {type: String, nilable: true, key: "reason"},
      status:               {type: String, nilable: false, key: "status"},
      type:                 {type: String, nilable: false, key: "type"},
    }, true)

    JSON.mapping({
      last_transition_time: {type: Time, nilable: true, key: "lastTransitionTime"},
      message:              {type: String, nilable: true, key: "message"},
      reason:               {type: String, nilable: true, key: "reason"},
      status:               {type: String, nilable: false, key: "status"},
      type:                 {type: String, nilable: false, key: "type"},
    }, true)

    def initialize(*, @last_transition_time : Time | Nil = nil, @message : String | Nil = nil, @reason : String | Nil = nil, @status : String | Nil = nil, @type : String | Nil = nil)
    end
  end
end
