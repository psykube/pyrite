# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # LeaseSpec is a specification of a Lease.
  class Api::Coordination::V1beta1::LeaseSpec
    # acquireTime is a time when the current lease was acquired.
    property acquire_time : Time | Nil

    # holderIdentity contains the identity of the holder of a current lease.
    property holder_identity : String | Nil

    # leaseDurationSeconds is a duration that candidates for a lease need to wait to force acquire it. This is measure against time of last observed RenewTime.
    property lease_duration_seconds : Int32 | Nil

    # leaseTransitions is the number of transitions of a lease between holders.
    property lease_transitions : Int32 | Nil

    # renewTime is a time when the current holder of a lease has last updated the lease.
    property renew_time : Time | Nil

    ::YAML.mapping({
      acquire_time:           {type: Time, nilable: true, key: "acquireTime", getter: false, setter: false},
      holder_identity:        {type: String, nilable: true, key: "holderIdentity", getter: false, setter: false},
      lease_duration_seconds: {type: Int32, nilable: true, key: "leaseDurationSeconds", getter: false, setter: false},
      lease_transitions:      {type: Int32, nilable: true, key: "leaseTransitions", getter: false, setter: false},
      renew_time:             {type: Time, nilable: true, key: "renewTime", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      acquire_time:           {type: Time, nilable: true, key: "acquireTime", getter: false, setter: false},
      holder_identity:        {type: String, nilable: true, key: "holderIdentity", getter: false, setter: false},
      lease_duration_seconds: {type: Int32, nilable: true, key: "leaseDurationSeconds", getter: false, setter: false},
      lease_transitions:      {type: Int32, nilable: true, key: "leaseTransitions", getter: false, setter: false},
      renew_time:             {type: Time, nilable: true, key: "renewTime", getter: false, setter: false},
    }, true)

    def initialize(*, @acquire_time : Time | Nil = nil, @holder_identity : String | Nil = nil, @lease_duration_seconds : Int32 | Nil = nil, @lease_transitions : Int32 | Nil = nil, @renew_time : Time | Nil = nil)
    end
  end
end
