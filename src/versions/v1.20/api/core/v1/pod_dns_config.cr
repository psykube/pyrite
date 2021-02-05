# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PodDNSConfig defines the DNS parameters of a pod in addition to those generated from DNSPolicy.
  class Api::Core::V1::PodDNSConfig
    include ::JSON::Serializable
    include ::YAML::Serializable

    # A list of DNS name server IP addresses. This will be appended to the base nameservers generated from DNSPolicy. Duplicated nameservers will be removed.
    @[JSON::Field(key: "nameservers")]
    @[YAML::Field(key: "nameservers")]
    property nameservers : Array(String) | Nil

    # A list of DNS resolver options. This will be merged with the base options generated from DNSPolicy. Duplicated entries will be removed. Resolution options given in Options will override those that appear in the base DNSPolicy.
    @[JSON::Field(key: "options")]
    @[YAML::Field(key: "options")]
    property options : Array(Api::Core::V1::PodDNSConfigOption) | Nil

    # A list of DNS search domains for host-name lookup. This will be appended to the base search paths generated from DNSPolicy. Duplicated search paths will be removed.
    @[JSON::Field(key: "searches")]
    @[YAML::Field(key: "searches")]
    property searches : Array(String) | Nil

    def initialize(*, @nameservers : Array | Nil = nil, @options : Array | Nil = nil, @searches : Array | Nil = nil)
    end
  end
end
