# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PodCondition contains details for the current condition of this pod.
  class Kubernetes::Api::V1::PodCondition
    # Last time we probed the condition.
    property last_probe_time : Time | Nil

    # Last time the condition transitioned from one status to another.
    property last_transition_time : Time | Nil

    # Human-readable message indicating details about last transition.
    property message : String | Nil

    # Unique, one-word, CamelCase reason for the condition's last transition.
    property reason : String | Nil

    # Status is the status of the condition. Can be True, False, Unknown. More info: [http://kubernetes.io/docs/user-guide/pod-states#pod-conditions](http://kubernetes.io/docs/user-guide/pod-states#pod-conditions)
    property status : String

    # Type is the type of the condition. Currently only Ready. More info: [http://kubernetes.io/docs/user-guide/pod-states#pod-conditions](http://kubernetes.io/docs/user-guide/pod-states#pod-conditions)
    property type : String

    YAML.mapping({
      last_probe_time:      {type: Time, nilable: true, key: "lastProbeTime"},
      last_transition_time: {type: Time, nilable: true, key: "lastTransitionTime"},
      message:              {type: String, nilable: true, key: "message"},
      reason:               {type: String, nilable: true, key: "reason"},
      status:               {type: String, nilable: false, key: "status"},
      type:                 {type: String, nilable: false, key: "type"},
    }, true)

    JSON.mapping({
      last_probe_time:      {type: Time, nilable: true, key: "lastProbeTime"},
      last_transition_time: {type: Time, nilable: true, key: "lastTransitionTime"},
      message:              {type: String, nilable: true, key: "message"},
      reason:               {type: String, nilable: true, key: "reason"},
      status:               {type: String, nilable: false, key: "status"},
      type:                 {type: String, nilable: false, key: "type"},
    }, true)

    def initialize(*, @last_probe_time : Time | Nil = nil, @last_transition_time : Time | Nil = nil, @message : String | Nil = nil, @reason : String | Nil = nil, @status : String | Nil = nil, @type : String | Nil = nil)
    end
  end
end
