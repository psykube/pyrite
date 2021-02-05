# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NodeAddress contains information for the node's address.
  class Kubernetes::Api::V1::NodeAddress
    include ::JSON::Serializable
    include ::YAML::Serializable

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
