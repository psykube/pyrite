# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  class KubeAggregator::Apis::Apiregistration::V1beta1::APIServiceCondition
    # Last time the condition transitioned from one status to another.
    property last_transition_time : Time | Nil

    # Human-readable message indicating details about last transition.
    property message : String | Nil

    # Unique, one-word, CamelCase reason for the condition's last transition.
    property reason : String | Nil

    # Status is the status of the condition. Can be True, False, Unknown.
    property status : String

    # Type is the type of the condition.
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
