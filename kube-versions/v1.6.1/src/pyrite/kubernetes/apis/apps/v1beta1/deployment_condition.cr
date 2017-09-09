# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # DeploymentCondition describes the state of a deployment at a certain point.
  class Kubernetes::Apis::Apps::V1beta1::DeploymentCondition
    # Last time the condition transitioned from one status to another.
    property last_transition_time : Time | Nil

    # The last time this condition was updated.
    property last_update_time : Time | Nil

    # A human readable message indicating details about the transition.
    property message : String | Nil

    # The reason for the condition's last transition.
    property reason : String | Nil

    # Status of the condition, one of True, False, Unknown.
    property status : String

    # Type of deployment condition.
    property type : String

    YAML.mapping({
      last_transition_time: {type: Time, nilable: true, key: "lastTransitionTime"},
      last_update_time:     {type: Time, nilable: true, key: "lastUpdateTime"},
      message:              {type: String, nilable: true, key: "message"},
      reason:               {type: String, nilable: true, key: "reason"},
      status:               {type: String, nilable: false, key: "status"},
      type:                 {type: String, nilable: false, key: "type"},
    }, true)

    JSON.mapping({
      last_transition_time: {type: Time, nilable: true, key: "lastTransitionTime"},
      last_update_time:     {type: Time, nilable: true, key: "lastUpdateTime"},
      message:              {type: String, nilable: true, key: "message"},
      reason:               {type: String, nilable: true, key: "reason"},
      status:               {type: String, nilable: false, key: "status"},
      type:                 {type: String, nilable: false, key: "type"},
    }, true)

    def initialize(*, @last_transition_time : Time | Nil = nil, @last_update_time : Time | Nil = nil, @message : String | Nil = nil, @reason : String | Nil = nil, @status : String | Nil = nil, @type : String | Nil = nil)
    end
  end
end
