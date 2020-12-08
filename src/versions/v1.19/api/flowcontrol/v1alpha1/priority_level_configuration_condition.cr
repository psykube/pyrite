# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PriorityLevelConfigurationCondition defines the condition of priority level.
  class Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationCondition
    # `lastTransitionTime` is the last time the condition transitioned from one status to another.
    property last_transition_time : Time | Nil

    # `message` is a human-readable message indicating details about last transition.
    property message : String | Nil

    # `reason` is a unique, one-word, CamelCase reason for the condition's last transition.
    property reason : String | Nil

    # `status` is the status of the condition. Can be True, False, Unknown. Required.
    property status : String | Nil

    # `type` is the type of the condition. Required.
    property type : String | Nil

    ::YAML.mapping({
      last_transition_time: {type: Time, nilable: true, key: "lastTransitionTime", getter: false, setter: false},
      message:              {type: String, nilable: true, key: "message", getter: false, setter: false},
      reason:               {type: String, nilable: true, key: "reason", getter: false, setter: false},
      status:               {type: String, nilable: true, key: "status", getter: false, setter: false},
      type:                 {type: String, nilable: true, key: "type", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      last_transition_time: {type: Time, nilable: true, key: "lastTransitionTime", getter: false, setter: false},
      message:              {type: String, nilable: true, key: "message", getter: false, setter: false},
      reason:               {type: String, nilable: true, key: "reason", getter: false, setter: false},
      status:               {type: String, nilable: true, key: "status", getter: false, setter: false},
      type:                 {type: String, nilable: true, key: "type", getter: false, setter: false},
    }, true)

    def initialize(*, @last_transition_time : Time | Nil = nil, @message : String | Nil = nil, @reason : String | Nil = nil, @status : String | Nil = nil, @type : String | Nil = nil)
    end
  end
end
