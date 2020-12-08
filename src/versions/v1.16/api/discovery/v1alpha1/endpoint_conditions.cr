# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # EndpointConditions represents the current condition of an endpoint.
  class Api::Discovery::V1alpha1::EndpointConditions
    # ready indicates that this endpoint is prepared to receive traffic, according to whatever system is managing the endpoint. A nil value indicates an unknown state. In most cases consumers should interpret this unknown state as ready.
    property ready : Bool | Nil

    ::YAML.mapping({
      ready: {type: Bool, nilable: true, key: "ready", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      ready: {type: Bool, nilable: true, key: "ready", getter: false, setter: false},
    }, true)

    def initialize(*, @ready : Bool | Nil = nil)
    end
  end
end
