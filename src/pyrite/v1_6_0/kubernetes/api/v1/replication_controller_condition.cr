# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# ReplicationControllerCondition describes the state of a replication controller at a certain point.
class Pyrite::V1_6_0::Kubernetes::Api::V1::ReplicationControllerCondition
  # The last time the condition transitioned from one status to another.
  property last_transition_time : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::Time

  # A human readable message indicating details about the transition.
  property message : String?

  # The reason for the condition's last transition.
  property reason : String?

  # Status of the condition, one of True, False, Unknown.
  property status : String

  # Type of replication controller condition.
  property type : String

  YAML.mapping({last_transition_time: {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::Time, nilable: true, key: lastTransitionTime, getter: false, setter: false},
                message:              {type: String, nilable: true, key: message, getter: false, setter: false},
                reason:               {type: String, nilable: true, key: reason, getter: false, setter: false},
                status:               {type: String, nilable: false, key: status, getter: false, setter: false},
                type:                 {type: String, nilable: false, key: type, getter: false, setter: false}}, true)

  JSON.mapping({last_transition_time: {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::Time, nilable: true, key: lastTransitionTime, getter: false, setter: false},
                message:              {type: String, nilable: true, key: message, getter: false, setter: false},
                reason:               {type: String, nilable: true, key: reason, getter: false, setter: false},
                status:               {type: String, nilable: false, key: status, getter: false, setter: false},
                type:                 {type: String, nilable: false, key: type, getter: false, setter: false}}, true)

  def initialize(@status, @type, @last_transition_time = nil, @message = nil, @reason = nil)
  end
end