# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PodCondition contains details for the current condition of this pod.
  class Kubernetes::Api::V1::PodCondition
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Last time we probed the condition.
    @[::JSON::Field(key: "lastProbeTime")]
    @[::YAML::Field(key: "lastProbeTime")]
    property last_probe_time : Time | Nil

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

    # Status is the status of the condition. Can be True, False, Unknown. More info: [http://kubernetes.io/docs/user-guide/pod-states#pod-conditions](http://kubernetes.io/docs/user-guide/pod-states#pod-conditions)
    @[::JSON::Field(key: "status")]
    @[::YAML::Field(key: "status")]
    property status : String

    # Type is the type of the condition. Currently only Ready. More info: [http://kubernetes.io/docs/user-guide/pod-states#pod-conditions](http://kubernetes.io/docs/user-guide/pod-states#pod-conditions)
    @[::JSON::Field(key: "type")]
    @[::YAML::Field(key: "type")]
    property type : String

    def initialize(*, @last_probe_time : Time | Nil = nil, @last_transition_time : Time | Nil = nil, @message : String | Nil = nil, @reason : String | Nil = nil, @status : String, @type : String)
    end
  end
end
