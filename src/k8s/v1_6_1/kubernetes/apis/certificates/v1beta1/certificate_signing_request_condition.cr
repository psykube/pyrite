# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

class K8S::V1_6_1::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestCondition
  # timestamp for the last update to this condition
  property last_update_time : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::Time

  # human readable message with details about the request state
  property message : String?

  # brief reason for the request state
  property reason : String?

  # request approval state, currently Approved or Denied.
  property type : String

  YAML.mapping({last_update_time: {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::Time, nilable: true, key: lastUpdateTime, getter: false, setter: false},
                message:          {type: String, nilable: true, key: message, getter: false, setter: false},
                reason:           {type: String, nilable: true, key: reason, getter: false, setter: false},
                type:             {type: String, nilable: false, key: type, getter: false, setter: false}}, true)

  JSON.mapping({last_update_time: {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::Time, nilable: true, key: lastUpdateTime, getter: false, setter: false},
                message:          {type: String, nilable: true, key: message, getter: false, setter: false},
                reason:           {type: String, nilable: true, key: reason, getter: false, setter: false},
                type:             {type: String, nilable: false, key: type, getter: false, setter: false}}, true)

  def initialize(@type, @last_update_time = nil, @message = nil, @reason = nil)
  end
end
