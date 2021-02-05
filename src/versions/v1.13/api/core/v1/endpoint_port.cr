# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # EndpointPort is a tuple that describes a single port.
  class Api::Core::V1::EndpointPort
    include ::JSON::Serializable
    include ::YAML::Serializable

    # The name of this port (corresponds to ServicePort.Name). Must be a DNS_LABEL. Optional only if one port is defined.
    @[JSON::Field(key: "name")]
    @[YAML::Field(key: "name")]
    property name : String | Nil

    # The port number of the endpoint.
    @[JSON::Field(key: "port")]
    @[YAML::Field(key: "port")]
    property port : Int32

    # The IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP.
    @[JSON::Field(key: "protocol")]
    @[YAML::Field(key: "protocol")]
    property protocol : String | Nil

    def initialize(*, @name : String | Nil = nil, @port : Int32, @protocol : String | Nil = nil)
    end
  end
end
