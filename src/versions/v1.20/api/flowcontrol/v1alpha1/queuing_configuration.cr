# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # QueuingConfiguration holds the configuration parameters for queuing
  class Api::Flowcontrol::V1alpha1::QueuingConfiguration
    include ::JSON::Serializable
    include ::YAML::Serializable

    # `handSize` is a small positive number that configures the shuffle sharding of requests into queues.  When enqueuing a request at this priority level the request's flow identifier (a string pair) is hashed and the hash value is used to shuffle the list of queues and deal a hand of the size specified here.  The request is put into one of the shortest queues in that hand. `handSize` must be no larger than `queues`, and should be significantly smaller (so that a few heavy flows do not saturate most of the queues).  See the user-facing documentation for more extensive guidance on setting this field.  This field has a default value of 8.
    @[JSON::Field(key: "handSize")]
    @[YAML::Field(key: "handSize")]
    property hand_size : Int32 | Nil

    # `queueLengthLimit` is the maximum number of requests allowed to be waiting in a given queue of this priority level at a time; excess requests are rejected.  This value must be positive.  If not specified, it will be defaulted to 50.
    @[JSON::Field(key: "queueLengthLimit")]
    @[YAML::Field(key: "queueLengthLimit")]
    property queue_length_limit : Int32 | Nil

    # `queues` is the number of queues for this priority level. The queues exist independently at each apiserver. The value must be positive.  Setting it to 1 effectively precludes shufflesharding and thus makes the distinguisher method of associated flow schemas irrelevant.  This field has a default value of 64.
    @[JSON::Field(key: "queues")]
    @[YAML::Field(key: "queues")]
    property queues : Int32 | Nil

    def initialize(*, @hand_size : Int32 | Nil = nil, @queue_length_limit : Int32 | Nil = nil, @queues : Int32 | Nil = nil)
    end
  end
end
