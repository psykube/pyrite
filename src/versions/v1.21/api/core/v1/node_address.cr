# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NodeAddress contains information for the node's address.
  class Api::Core::V1::NodeAddress < Kubernetes::Spec
    # The node address.
    @[::JSON::Field(key: "address")]
    @[::YAML::Field(key: "address")]
    property address : String

    # Node address type, one of Hostname, ExternalIP or InternalIP.
    @[::JSON::Field(key: "type")]
    @[::YAML::Field(key: "type")]
    property type : String

    def initialize(*, @address : String, @type : String)
    end
  end
end
