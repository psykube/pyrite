# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # EndpointHints provides hints describing how an endpoint should be consumed.
  class Api::Discovery::V1::EndpointHints < Kubernetes::Spec
    # forZones indicates the zone(s) this endpoint should be consumed by to enable topology aware routing.
    @[::JSON::Field(key: "forZones")]
    @[::YAML::Field(key: "forZones")]
    property for_zones : Array(Api::Discovery::V1::ForZone) | Nil

    def initialize(*, @for_zones : Array | Nil = nil)
    end
  end
end
