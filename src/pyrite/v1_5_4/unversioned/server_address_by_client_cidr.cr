# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_4
  # ServerAddressByClientCIDR helps the client to determine the server address that they should use, depending on the clientCIDR that they match.
  class Definitions::Unversioned::ServerAddressByClientCIDR
    # The CIDR with which clients can match their IP to figure out the server address that they should use.
    property client_cidr : String

    # Address of this server, suitable for a client that matches the above CIDR. This can be a hostname, hostname:port, IP or IP:port.
    property server_address : String

    YAML.mapping({client_cidr:    {type: String, nilable: false, key: clientCIDR, getter: false, setter: false},
                  server_address: {type: String, nilable: false, key: serverAddress, getter: false, setter: false}}, true)

    JSON.mapping({client_cidr:    {type: String, nilable: false, key: clientCIDR, getter: false, setter: false},
                  server_address: {type: String, nilable: false, key: serverAddress, getter: false, setter: false}}, true)

    def initialize(@client_cidr : String? = nil, @server_address : String? = nil)
    end
  end
end
