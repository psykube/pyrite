# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ForZone provides information about which zones should consume this endpoint.
  class Api::Discovery::V1::ForZone < Kubernetes::Spec
    # name represents the name of the zone.
    @[::JSON::Field(key: "name")]
    @[::YAML::Field(key: "name")]
    property name : String

    def initialize(*, @name : String)
    end
  end
end
