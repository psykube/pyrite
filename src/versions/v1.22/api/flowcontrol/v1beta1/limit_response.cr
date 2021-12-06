# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # LimitResponse defines how to handle requests that can not be executed right now.
  class Api::Flowcontrol::V1beta1::LimitResponse < Kubernetes::Spec
    # `queuing` holds the configuration parameters for queuing. This field may be non-empty only if `type` is `"Queue"`.
    @[::JSON::Field(key: "queuing")]
    @[::YAML::Field(key: "queuing")]
    property queuing : Api::Flowcontrol::V1beta1::QueuingConfiguration | Nil

    # `type` is "Queue" or "Reject". "Queue" means that requests that can not be executed upon arrival are held in a queue until they can be executed or a queuing limit is reached. "Reject" means that requests that can not be executed upon arrival are rejected. Required.
    @[::JSON::Field(key: "type")]
    @[::YAML::Field(key: "type")]
    property type : String

    def initialize(*, @queuing : Api::Flowcontrol::V1beta1::QueuingConfiguration | Nil = nil, @type : String)
    end
  end
end
