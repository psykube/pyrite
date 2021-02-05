# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # APIGroup contains the name, the supported versions, and the preferred version of a group.
  class Apimachinery::Apis::Meta::V1::APIGroup
    include ::JSON::Serializable
    include ::YAML::Serializable

    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/api-conventions.md#resources)
    @[JSON::Field(key: "apiVersion")]
    @[YAML::Field(key: "apiVersion")]
    property api_version : String | Nil

    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds)
    @[JSON::Field(key: "kind")]
    @[YAML::Field(key: "kind")]
    property kind : String | Nil

    # name is the name of the group.
    @[JSON::Field(key: "name")]
    @[YAML::Field(key: "name")]
    property name : String

    # preferredVersion is the version preferred by the API server, which probably is the storage version.
    @[JSON::Field(key: "preferredVersion")]
    @[YAML::Field(key: "preferredVersion")]
    property preferred_version : Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery | Nil

    # a map of client CIDR to server address that is serving this group. This is to help clients reach servers in the most network-efficient way possible. Clients can use the appropriate server address as per the CIDR that they match. In case of multiple matches, clients should use the longest matching CIDR. The server returns only those CIDRs that it thinks that the client can match. For example: the master will return an internal IP CIDR only, if the client reaches the server using an internal IP. Server looks at X-Forwarded-For header or X-Real-Ip header or request.RemoteAddr (in that order) to get the client IP.
    @[JSON::Field(key: "serverAddressByClientCIDRs")]
    @[YAML::Field(key: "serverAddressByClientCIDRs")]
    property server_address_by_client_cidrs : Array(Apimachinery::Apis::Meta::V1::ServerAddressByClientCIDR)

    # versions are the versions supported in this group.
    @[JSON::Field(key: "versions")]
    @[YAML::Field(key: "versions")]
    property versions : Array(Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery)

    def initialize(*, @api_version : String | Nil = nil, @kind : String | Nil = nil, @name : String, @preferred_version : Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery | Nil = nil, @server_address_by_client_cidrs : Array, @versions : Array)
    end
  end
end
