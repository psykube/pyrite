# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_1
  # PodCondition contains details for the current condition of this pod.
  class Definitions::Kubernetes::Api::V1::PodCondition
    # Last time we probed the condition.
    property last_probe_time : Apimachinery::Apis::Meta::V1::Time

    # Last time the condition transitioned from one status to another.
    property last_transition_time : Apimachinery::Apis::Meta::V1::Time

    # Human-readable message indicating details about last transition.
    property message : String?

    # Unique, one-word, CamelCase reason for the condition's last transition.
    property reason : String?

    # Status is the status of the condition. Can be True, False, Unknown. More info: [http://kubernetes.io/docs/user-guide/pod-states#pod-conditions](http://kubernetes.io/docs/user-guide/pod-states#pod-conditions)
    property status : String

    # Type is the type of the condition. Currently only Ready. More info: [http://kubernetes.io/docs/user-guide/pod-states#pod-conditions](http://kubernetes.io/docs/user-guide/pod-states#pod-conditions)
    property type : String

    YAML.mapping({last_probe_time:      {type: Apimachinery::Apis::Meta::V1::Time, nilable: true, key: lastProbeTime, getter: false, setter: false},
                  last_transition_time: {type: Apimachinery::Apis::Meta::V1::Time, nilable: true, key: lastTransitionTime, getter: false, setter: false},
                  message:              {type: String, nilable: true, key: message, getter: false, setter: false},
                  reason:               {type: String, nilable: true, key: reason, getter: false, setter: false},
                  status:               {type: String, nilable: false, key: status, getter: false, setter: false},
                  type:                 {type: String, nilable: false, key: type, getter: false, setter: false}}, true)

    JSON.mapping({last_probe_time:      {type: Apimachinery::Apis::Meta::V1::Time, nilable: true, key: lastProbeTime, getter: false, setter: false},
                  last_transition_time: {type: Apimachinery::Apis::Meta::V1::Time, nilable: true, key: lastTransitionTime, getter: false, setter: false},
                  message:              {type: String, nilable: true, key: message, getter: false, setter: false},
                  reason:               {type: String, nilable: true, key: reason, getter: false, setter: false},
                  status:               {type: String, nilable: false, key: status, getter: false, setter: false},
                  type:                 {type: String, nilable: false, key: type, getter: false, setter: false}}, true)

    def initialize(@last_probe_time : Apimachinery::Apis::Meta::V1::Time = nil, @last_transition_time : Apimachinery::Apis::Meta::V1::Time = nil, @message : String? = nil, @reason : String? = nil, @status : String? = nil, @type : String? = nil)
    end
  end
end
