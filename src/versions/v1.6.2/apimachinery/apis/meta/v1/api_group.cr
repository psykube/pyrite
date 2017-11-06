# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # APIGroup contains the name, the supported versions, and the preferred version of a group.
  class Apimachinery::Apis::Meta::V1::APIGroup
    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources)
    property api_version : String | Nil

    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds)
    property kind : String | Nil

    # name is the name of the group.
    property name : String

    # preferredVersion is the version preferred by the API server, which probably is the storage version.
    property preferred_version : Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery | Nil

    # a map of client CIDR to server address that is serving this group. This is to help clients reach servers in the most network-efficient way possible. Clients can use the appropriate server address as per the CIDR that they match. In case of multiple matches, clients should use the longest matching CIDR. The server returns only those CIDRs that it thinks that the client can match. For example: the master will return an internal IP CIDR only, if the client reaches the server using an internal IP. Server looks at X-Forwarded-For header or X-Real-Ip header or request.RemoteAddr (in that order) to get the client IP.
    property server_address_by_client_cid_rs : Array(Apimachinery::Apis::Meta::V1::ServerAddressByClientCIDR)

    # versions are the versions supported in this group.
    property versions : Array(Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery)

    ::YAML.mapping({
      api_version:                     {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
      kind:                            {type: String, nilable: true, key: "kind", getter: false, setter: false},
      name:                            {type: String, nilable: false, key: "name", getter: false, setter: false},
      preferred_version:               {type: Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery, nilable: true, key: "preferredVersion", getter: false, setter: false},
      server_address_by_client_cid_rs: {type: Array(Apimachinery::Apis::Meta::V1::ServerAddressByClientCIDR), nilable: false, key: "serverAddressByClientCIDRs", getter: false, setter: false},
      versions:                        {type: Array(Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery), nilable: false, key: "versions", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version:                     {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
      kind:                            {type: String, nilable: true, key: "kind", getter: false, setter: false},
      name:                            {type: String, nilable: false, key: "name", getter: false, setter: false},
      preferred_version:               {type: Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery, nilable: true, key: "preferredVersion", getter: false, setter: false},
      server_address_by_client_cid_rs: {type: Array(Apimachinery::Apis::Meta::V1::ServerAddressByClientCIDR), nilable: false, key: "serverAddressByClientCIDRs", getter: false, setter: false},
      versions:                        {type: Array(Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery), nilable: false, key: "versions", getter: false, setter: false},
    }, true)

    def initialize(*, @api_version : String | Nil = nil, @kind : String | Nil = nil, @name : String | Nil = nil, @preferred_version : Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery | Nil = nil, @server_address_by_client_cid_rs : Array | Nil = nil, @versions : Array | Nil = nil)
    end
  end
end
