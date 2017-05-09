# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_1
  # APIGroup contains the name, the supported versions, and the preferred version of a group.
  class Definitions::Apimachinery::Apis::Meta::V1::APIGroup
    # name is the name of the group.
    property name : String

    # preferredVersion is the version preferred by the API server, which probably is the storage version.
    property preferred_version : Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery

    # a map of client CIDR to server address that is serving this group. This is to help clients reach servers in the most network-efficient way possible. Clients can use the appropriate server address as per the CIDR that they match. In case of multiple matches, clients should use the longest matching CIDR. The server returns only those CIDRs that it thinks that the client can match. For example: the master will return an internal IP CIDR only, if the client reaches the server using an internal IP. Server looks at X-Forwarded-For header or X-Real-Ip header or request.RemoteAddr (in that order) to get the client IP.
    property server_address_by_client_cid_rs : Array(Apimachinery::Apis::Meta::V1::ServerAddressByClientCIDR)

    # versions are the versions supported in this group.
    property versions : Array(Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery)

    YAML.mapping({
      api_version:                     {type: String, default: "APIGroup", key: apiVersion, getter: false, setter: false},
      kind:                            {type: String, default: "v1", getter: false, setter: false},
      name:                            {type: String, nilable: false, key: name, getter: false, setter: false},
      preferred_version:               {type: Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery, nilable: true, key: preferredVersion, getter: false, setter: false},
      server_address_by_client_cid_rs: {type: Array(Apimachinery::Apis::Meta::V1::ServerAddressByClientCIDR), nilable: false, key: serverAddressByClientCIDRs, getter: false, setter: false},
      versions:                        {type: Array(Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery), nilable: false, key: versions, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version:                     {type: String, default: "APIGroup", key: apiVersion, getter: false, setter: false},
      kind:                            {type: String, default: "v1", getter: false, setter: false},
      name:                            {type: String, nilable: false, key: name, getter: false, setter: false},
      preferred_version:               {type: Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery, nilable: true, key: preferredVersion, getter: false, setter: false},
      server_address_by_client_cid_rs: {type: Array(Apimachinery::Apis::Meta::V1::ServerAddressByClientCIDR), nilable: false, key: serverAddressByClientCIDRs, getter: false, setter: false},
      versions:                        {type: Array(Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery), nilable: false, key: versions, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @kind : String? = nil, @name : String? = nil, @preferred_version : Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery = nil, @server_address_by_client_cid_rs : Array? = nil, @versions : Array? = nil)
      @api_version = "meta/v1"
      @kind = "APIGroup"
    end
  end

  module Resources::Meta::V1
    include Resource
    alias APIGroup = Definitions::Apimachinery::Apis::Meta::V1::APIGroup
  end
end
