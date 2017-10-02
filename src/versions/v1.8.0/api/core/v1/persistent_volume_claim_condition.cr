# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PersistentVolumeClaimCondition contails details about state of pvc
  class Api::Core::V1::PersistentVolumeClaimCondition
    # Last time we probed the condition.
    property last_probe_time : Time | Nil

    # Last time the condition transitioned from one status to another.
    property last_transition_time : Time | Nil

    # Human-readable message indicating details about last transition.
    property message : String | Nil

    # Unique, this should be a short, machine understandable string that gives the reason for condition's last transition. If it reports "ResizeStarted" that means the underlying persistent volume is being resized.
    property reason : String | Nil

    property status : String

    property type : String

    YAML.mapping({
      last_probe_time:      {type: Time, nilable: true, key: "lastProbeTime", getter: false, setter: false},
      last_transition_time: {type: Time, nilable: true, key: "lastTransitionTime", getter: false, setter: false},
      message:              {type: String, nilable: true, key: "message", getter: false, setter: false},
      reason:               {type: String, nilable: true, key: "reason", getter: false, setter: false},
      status:               {type: String, nilable: false, key: "status", getter: false, setter: false},
      type:                 {type: String, nilable: false, key: "type", getter: false, setter: false},
    }, true)

    JSON.mapping({
      last_probe_time:      {type: Time, nilable: true, key: "lastProbeTime", getter: false, setter: false},
      last_transition_time: {type: Time, nilable: true, key: "lastTransitionTime", getter: false, setter: false},
      message:              {type: String, nilable: true, key: "message", getter: false, setter: false},
      reason:               {type: String, nilable: true, key: "reason", getter: false, setter: false},
      status:               {type: String, nilable: false, key: "status", getter: false, setter: false},
      type:                 {type: String, nilable: false, key: "type", getter: false, setter: false},
    }, true)

    def initialize(*, @last_probe_time : Time | Nil = nil, @last_transition_time : Time | Nil = nil, @message : String | Nil = nil, @reason : String | Nil = nil, @status : String | Nil = nil, @type : String | Nil = nil)
    end
  end
end
