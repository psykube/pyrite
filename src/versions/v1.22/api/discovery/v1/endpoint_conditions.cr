# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # EndpointConditions represents the current condition of an endpoint.
  class Api::Discovery::V1::EndpointConditions < Kubernetes::Spec
    # ready indicates that this endpoint is prepared to receive traffic, according to whatever system is managing the endpoint. A nil value indicates an unknown state. In most cases consumers should interpret this unknown state as ready. For compatibility reasons, ready should never be "true" for terminating endpoints.
    @[::JSON::Field(key: "ready")]
    @[::YAML::Field(key: "ready")]
    property ready : Bool | Nil

    # serving is identical to ready except that it is set regardless of the terminating state of endpoints. This condition should be set to true for a ready endpoint that is terminating. If nil, consumers should defer to the ready condition. This field can be enabled with the EndpointSliceTerminatingCondition feature gate.
    @[::JSON::Field(key: "serving")]
    @[::YAML::Field(key: "serving")]
    property serving : Bool | Nil

    # terminating indicates that this endpoint is terminating. A nil value indicates an unknown state. Consumers should interpret this unknown state to mean that the endpoint is not terminating. This field can be enabled with the EndpointSliceTerminatingCondition feature gate.
    @[::JSON::Field(key: "terminating")]
    @[::YAML::Field(key: "terminating")]
    property terminating : Bool | Nil

    def initialize(*, @ready : Bool | Nil = nil, @serving : Bool | Nil = nil, @terminating : Bool | Nil = nil)
    end
  end
end
