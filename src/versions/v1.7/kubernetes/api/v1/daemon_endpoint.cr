# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # DaemonEndpoint contains information about a single Daemon endpoint.
  class Kubernetes::Api::V1::DaemonEndpoint < Kubernetes::Spec
    # Port number of the given endpoint.
    @[::JSON::Field(key: "Port")]
    @[::YAML::Field(key: "Port")]
    property port : Int32

    def initialize(*, @port : Int32)
    end
  end
end
