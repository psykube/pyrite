# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_1
  # APIGroup contains the name, the supported versions, and the preferred version of a group.
  class Definitions::Unversioned::APIGroup
    # name is the name of the group.
    property name : String

    # preferredVersion is the version preferred by the API server, which probably is the storage version.
    property preferred_version : Unversioned::GroupVersionForDiscovery

    # a map of client CIDR to server address that is serving this group. This is to help clients reach servers in the most network-efficient way possible. Clients can use the appropriate server address as per the CIDR that they match. In case of multiple matches, clients should use the longest matching CIDR. The server returns only those CIDRs that it thinks that the client can match. For example: the master will return an internal IP CIDR only, if the client reaches the server using an internal IP. Server looks at X-Forwarded-For header or X-Real-Ip header or request.RemoteAddr (in that order) to get the client IP.
    property server_address_by_client_cid_rs : Array(Unversioned::ServerAddressByClientCIDR)

    # versions are the versions supported in this group.
    property versions : Array(Unversioned::GroupVersionForDiscovery)

    YAML.mapping({name:                            {type: String, nilable: false, key: name, getter: false, setter: false},
                  preferred_version:               {type: Unversioned::GroupVersionForDiscovery, nilable: true, key: preferredVersion, getter: false, setter: false},
                  server_address_by_client_cid_rs: {type: Array(Unversioned::ServerAddressByClientCIDR), nilable: false, key: serverAddressByClientCIDRs, getter: false, setter: false},
                  versions:                        {type: Array(Unversioned::GroupVersionForDiscovery), nilable: false, key: versions, getter: false, setter: false}}, true)

    JSON.mapping({name:                            {type: String, nilable: false, key: name, getter: false, setter: false},
                  preferred_version:               {type: Unversioned::GroupVersionForDiscovery, nilable: true, key: preferredVersion, getter: false, setter: false},
                  server_address_by_client_cid_rs: {type: Array(Unversioned::ServerAddressByClientCIDR), nilable: false, key: serverAddressByClientCIDRs, getter: false, setter: false},
                  versions:                        {type: Array(Unversioned::GroupVersionForDiscovery), nilable: false, key: versions, getter: false, setter: false}}, true)

    def initialize(@name : String? = nil, @preferred_version : Unversioned::GroupVersionForDiscovery = nil, @server_address_by_client_cid_rs : Array? = nil, @versions : Array? = nil)
    end
  end
end
