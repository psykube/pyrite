# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # HostAlias holds the mapping between IP and hostnames that will be injected as an entry in the pod's hosts file.
  class Kubernetes::Api::V1::HostAlias
    # Hostnames for the above IP address.
    property hostnames : Array(String) | Nil

    # IP address of the host file entry.
    property ip : String | Nil

    YAML.mapping({
      hostnames: {type: Array(String), nilable: true, key: "hostnames"},
      ip:        {type: String, nilable: true, key: "ip"},
    }, true)

    JSON.mapping({
      hostnames: {type: Array(String), nilable: true, key: "hostnames"},
      ip:        {type: String, nilable: true, key: "ip"},
    }, true)

    def initialize(*, @hostnames : Array | Nil = nil, @ip : String | Nil = nil)
    end
  end
end
