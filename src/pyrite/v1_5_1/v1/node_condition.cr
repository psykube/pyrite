# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_1
  # NodeCondition contains condition information for a node.
  class Definitions::V1::NodeCondition
    # Last time we got an update on a given condition.
    property last_heartbeat_time : Unversioned::Time

    # Last time the condition transit from one status to another.
    property last_transition_time : Unversioned::Time

    # Human readable message indicating details about last transition.
    property message : String?

    # (brief) reason for the condition's last transition.
    property reason : String?

    # Status of the condition, one of True, False, Unknown.
    property status : String

    # Type of node condition.
    property type : String

    YAML.mapping({last_heartbeat_time:  {type: Unversioned::Time, nilable: true, key: lastHeartbeatTime, getter: false, setter: false},
                  last_transition_time: {type: Unversioned::Time, nilable: true, key: lastTransitionTime, getter: false, setter: false},
                  message:              {type: String, nilable: true, key: message, getter: false, setter: false},
                  reason:               {type: String, nilable: true, key: reason, getter: false, setter: false},
                  status:               {type: String, nilable: false, key: status, getter: false, setter: false},
                  type:                 {type: String, nilable: false, key: type, getter: false, setter: false}}, true)

    JSON.mapping({last_heartbeat_time:  {type: Unversioned::Time, nilable: true, key: lastHeartbeatTime, getter: false, setter: false},
                  last_transition_time: {type: Unversioned::Time, nilable: true, key: lastTransitionTime, getter: false, setter: false},
                  message:              {type: String, nilable: true, key: message, getter: false, setter: false},
                  reason:               {type: String, nilable: true, key: reason, getter: false, setter: false},
                  status:               {type: String, nilable: false, key: status, getter: false, setter: false},
                  type:                 {type: String, nilable: false, key: type, getter: false, setter: false}}, true)

    def initialize(@last_heartbeat_time : Unversioned::Time = nil, @last_transition_time : Unversioned::Time = nil, @message : String? = nil, @reason : String? = nil, @status : String? = nil, @type : String? = nil)
    end
  end
end
