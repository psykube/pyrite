# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  class Api::Certificates::V1beta1::CertificateSigningRequestCondition < Kubernetes::Spec
    # lastTransitionTime is the time the condition last transitioned from one status to another. If unset, when a new condition type is added or an existing condition's status is changed, the server defaults this to the current time.
    @[::JSON::Field(key: "lastTransitionTime")]
    @[::YAML::Field(key: "lastTransitionTime")]
    property last_transition_time : Time | Nil

    # timestamp for the last update to this condition
    @[::JSON::Field(key: "lastUpdateTime")]
    @[::YAML::Field(key: "lastUpdateTime")]
    property last_update_time : Time | Nil

    # human readable message with details about the request state
    @[::JSON::Field(key: "message")]
    @[::YAML::Field(key: "message")]
    property message : String | Nil

    # brief reason for the request state
    @[::JSON::Field(key: "reason")]
    @[::YAML::Field(key: "reason")]
    property reason : String | Nil

    # Status of the condition, one of True, False, Unknown. Approved, Denied, and Failed conditions may not be "False" or "Unknown". Defaults to "True". If unset, should be treated as "True".
    @[::JSON::Field(key: "status")]
    @[::YAML::Field(key: "status")]
    property status : String | Nil

    # type of the condition. Known conditions include "Approved", "Denied", and "Failed".
    @[::JSON::Field(key: "type")]
    @[::YAML::Field(key: "type")]
    property type : String

    def initialize(*, @last_transition_time : Time | Nil = nil, @last_update_time : Time | Nil = nil, @message : String | Nil = nil, @reason : String | Nil = nil, @status : String | Nil = nil, @type : String)
    end
  end
end
