# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_3
  class Definitions::V1alpha1::CertificateSigningRequestCondition
    # timestamp for the last update to this condition
    property last_update_time : Unversioned::Time

    # human readable message with details about the request state
    property message : String?

    # brief reason for the request state
    property reason : String?

    # request approval state, currently Approved or Denied.
    property type : String

    YAML.mapping({last_update_time: {type: Unversioned::Time, nilable: true, key: lastUpdateTime, getter: false, setter: false},
                  message:          {type: String, nilable: true, key: message, getter: false, setter: false},
                  reason:           {type: String, nilable: true, key: reason, getter: false, setter: false},
                  type:             {type: String, nilable: false, key: type, getter: false, setter: false}}, true)

    JSON.mapping({last_update_time: {type: Unversioned::Time, nilable: true, key: lastUpdateTime, getter: false, setter: false},
                  message:          {type: String, nilable: true, key: message, getter: false, setter: false},
                  reason:           {type: String, nilable: true, key: reason, getter: false, setter: false},
                  type:             {type: String, nilable: false, key: type, getter: false, setter: false}}, true)

    def initialize(@last_update_time : Unversioned::Time = nil, @message : String? = nil, @reason : String? = nil, @type : String? = nil)
    end
  end
end
