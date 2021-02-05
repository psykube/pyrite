# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # LeaseSpec is a specification of a Lease.
  class Api::Coordination::V1::LeaseSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # acquireTime is a time when the current lease was acquired.
    @[::JSON::Field(key: "acquireTime")]
    @[::YAML::Field(key: "acquireTime")]
    property acquire_time : Time | Nil

    # holderIdentity contains the identity of the holder of a current lease.
    @[::JSON::Field(key: "holderIdentity")]
    @[::YAML::Field(key: "holderIdentity")]
    property holder_identity : String | Nil

    # leaseDurationSeconds is a duration that candidates for a lease need to wait to force acquire it. This is measure against time of last observed RenewTime.
    @[::JSON::Field(key: "leaseDurationSeconds")]
    @[::YAML::Field(key: "leaseDurationSeconds")]
    property lease_duration_seconds : Int32 | Nil

    # leaseTransitions is the number of transitions of a lease between holders.
    @[::JSON::Field(key: "leaseTransitions")]
    @[::YAML::Field(key: "leaseTransitions")]
    property lease_transitions : Int32 | Nil

    # renewTime is a time when the current holder of a lease has last updated the lease.
    @[::JSON::Field(key: "renewTime")]
    @[::YAML::Field(key: "renewTime")]
    property renew_time : Time | Nil

    def initialize(*, @acquire_time : Time | Nil = nil, @holder_identity : String | Nil = nil, @lease_duration_seconds : Int32 | Nil = nil, @lease_transitions : Int32 | Nil = nil, @renew_time : Time | Nil = nil)
    end
  end
end
