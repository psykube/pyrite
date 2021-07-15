# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # EventSource contains information for an event.
  class Api::Core::V1::EventSource < Kubernetes::Spec
    # Component from which the event is generated.
    @[::JSON::Field(key: "component")]
    @[::YAML::Field(key: "component")]
    property component : String | Nil

    # Node name on which the event is generated.
    @[::JSON::Field(key: "host")]
    @[::YAML::Field(key: "host")]
    property host : String | Nil

    def initialize(*, @component : String | Nil = nil, @host : String | Nil = nil)
    end
  end
end
