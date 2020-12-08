# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CertificateSigningRequestCondition describes a condition of a CertificateSigningRequest object
  class Api::Certificates::V1::CertificateSigningRequestCondition
    # lastTransitionTime is the time the condition last transitioned from one status to another. If unset, when a new condition type is added or an existing condition's status is changed, the server defaults this to the current time.
    property last_transition_time : Time | Nil

    # lastUpdateTime is the time of the last update to this condition
    property last_update_time : Time | Nil

    # message contains a human readable message with details about the request state
    property message : String | Nil

    # reason indicates a brief reason for the request state
    property reason : String | Nil

    # status of the condition, one of True, False, Unknown. Approved, Denied, and Failed conditions may not be "False" or "Unknown".
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
    property type : String

    ::YAML.mapping({
      last_transition_time: {type: Time, nilable: true, key: "lastTransitionTime", getter: false, setter: false},
      last_update_time:     {type: Time, nilable: true, key: "lastUpdateTime", getter: false, setter: false},
      message:              {type: String, nilable: true, key: "message", getter: false, setter: false},
      reason:               {type: String, nilable: true, key: "reason", getter: false, setter: false},
      status:               {type: String, nilable: false, key: "status", getter: false, setter: false},
      type:                 {type: String, nilable: false, key: "type", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      last_transition_time: {type: Time, nilable: true, key: "lastTransitionTime", getter: false, setter: false},
      last_update_time:     {type: Time, nilable: true, key: "lastUpdateTime", getter: false, setter: false},
      message:              {type: String, nilable: true, key: "message", getter: false, setter: false},
      reason:               {type: String, nilable: true, key: "reason", getter: false, setter: false},
      status:               {type: String, nilable: false, key: "status", getter: false, setter: false},
      type:                 {type: String, nilable: false, key: "type", getter: false, setter: false},
    }, true)

    def initialize(*, @status : String, @type : String, @last_transition_time : Time | Nil = nil, @last_update_time : Time | Nil = nil, @message : String | Nil = nil, @reason : String | Nil = nil)
    end
  end
end
