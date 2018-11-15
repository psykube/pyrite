# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PodDNSConfig defines the DNS parameters of a pod in addition to those generated from DNSPolicy.
  class Api::Core::V1::PodDNSConfig
    # A list of DNS name server IP addresses. This will be appended to the base nameservers generated from DNSPolicy. Duplicated nameservers will be removed.
    property nameservers : Array(String) | Nil

    # A list of DNS resolver options. This will be merged with the base options generated from DNSPolicy. Duplicated entries will be removed. Resolution options given in Options will override those that appear in the base DNSPolicy.
    property options : Array(Api::Core::V1::PodDNSConfigOption) | Nil

    # A list of DNS search domains for host-name lookup. This will be appended to the base search paths generated from DNSPolicy. Duplicated search paths will be removed.
    property searches : Array(String) | Nil

    ::YAML.mapping({
      nameservers: {type: Array(String), nilable: true, key: "nameservers", getter: false, setter: false},
      options:     {type: Array(Api::Core::V1::PodDNSConfigOption), nilable: true, key: "options", getter: false, setter: false},
      searches:    {type: Array(String), nilable: true, key: "searches", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      nameservers: {type: Array(String), nilable: true, key: "nameservers", getter: false, setter: false},
      options:     {type: Array(Api::Core::V1::PodDNSConfigOption), nilable: true, key: "options", getter: false, setter: false},
      searches:    {type: Array(String), nilable: true, key: "searches", getter: false, setter: false},
    }, true)

    def initialize(*, @nameservers : Array | Nil = nil, @options : Array | Nil = nil, @searches : Array | Nil = nil)
    end
  end
end
