# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CertificateSigningRequestCondition describes a condition of a CertificateSigningRequest object
  class Api::Certificates::V1::CertificateSigningRequestCondition < Kubernetes::Spec
    # lastTransitionTime is the time the condition last transitioned from one status to another. If unset, when a new condition type is added or an existing condition's status is changed, the server defaults this to the current time.
    @[::JSON::Field(key: "lastTransitionTime")]
    @[::YAML::Field(key: "lastTransitionTime")]
    property last_transition_time : Time | Nil

    # lastUpdateTime is the time of the last update to this condition
    @[::JSON::Field(key: "lastUpdateTime")]
    @[::YAML::Field(key: "lastUpdateTime")]
    property last_update_time : Time | Nil

    # message contains a human readable message with details about the request state
    @[::JSON::Field(key: "message")]
    @[::YAML::Field(key: "message")]
    property message : String | Nil

    # reason indicates a brief reason for the request state
    @[::JSON::Field(key: "reason")]
    @[::YAML::Field(key: "reason")]
    property reason : String | Nil

    # status of the condition, one of True, False, Unknown. Approved, Denied, and Failed conditions may not be "False" or "Unknown".
    @[::JSON::Field(key: "status")]
    @[::YAML::Field(key: "status")]
    property status : String

    # type of the condition. Known conditions are "Approved", "Denied", and "Failed".
    #
    # An "Approved" condition is added via the /approval subresource, indicating the request was approved and should be issued by the signer.
    #
    # A "Denied" condition is added via the /approval subresource, indicating the request was denied and should not be issued by the signer.
    #
    # A "Failed" condition is added via the /status subresource, indicating the signer failed to issue the certificate.
    #
    # Approved and Denied conditions are mutually exclusive. Approved, Denied, and Failed conditions cannot be removed once added.
    #
    # Only one condition of a given type is allowed.
    @[::JSON::Field(key: "type")]
    @[::YAML::Field(key: "type")]
    property type : String

    def initialize(*, @last_transition_time : Time | Nil = nil, @last_update_time : Time | Nil = nil, @message : String | Nil = nil, @reason : String | Nil = nil, @status : String, @type : String)
    end
  end
end
