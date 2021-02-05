# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ServerAddressByClientCIDR helps the client to determine the server address that they should use, depending on the clientCIDR that they match.
  class Apimachinery::Apis::Meta::V1::ServerAddressByClientCIDR
    include ::JSON::Serializable
    include ::YAML::Serializable

    # The CIDR with which clients can match their IP to figure out the server address that they should use.
    @[JSON::Field(key: "clientCIDR")]
    @[YAML::Field(key: "clientCIDR")]
    property client_cidr : String

    # Address of this server, suitable for a client that matches the above CIDR. This can be a hostname, hostname:port, IP or IP:port.
    @[JSON::Field(key: "serverAddress")]
    @[YAML::Field(key: "serverAddress")]
    property server_address : String

    def initialize(*, @client_cidr : String, @server_address : String)
    end
  end
end
