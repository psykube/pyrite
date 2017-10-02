# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  class Api::Certificates::V1beta1::CertificateSigningRequestCondition
    # timestamp for the last update to this condition
    property last_update_time : Time | Nil

    # human readable message with details about the request state
    property message : String | Nil

    # brief reason for the request state
    property reason : String | Nil

    # request approval state, currently Approved or Denied.
    property type : String

    YAML.mapping({
      last_update_time: {type: Time, nilable: true, key: "lastUpdateTime", getter: false, setter: false},
      message:          {type: String, nilable: true, key: "message", getter: false, setter: false},
      reason:           {type: String, nilable: true, key: "reason", getter: false, setter: false},
      type:             {type: String, nilable: false, key: "type", getter: false, setter: false},
    }, true)

    JSON.mapping({
      last_update_time: {type: Time, nilable: true, key: "lastUpdateTime", getter: false, setter: false},
      message:          {type: String, nilable: true, key: "message", getter: false, setter: false},
      reason:           {type: String, nilable: true, key: "reason", getter: false, setter: false},
      type:             {type: String, nilable: false, key: "type", getter: false, setter: false},
    }, true)

    def initialize(*, @last_update_time : Time | Nil = nil, @message : String | Nil = nil, @reason : String | Nil = nil, @type : String | Nil = nil)
    end
  end
end
