# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # HostAlias holds the mapping between IP and hostnames that will be injected as an entry in the pod's hosts file.
  class Api::Core::V1::HostAlias < Kubernetes::Spec
    # Hostnames for the above IP address.
    @[::JSON::Field(key: "hostnames")]
    @[::YAML::Field(key: "hostnames")]
    property hostnames : Array(String) | Nil

    # IP address of the host file entry.
    @[::JSON::Field(key: "ip")]
    @[::YAML::Field(key: "ip")]
    property ip : String | Nil

    def initialize(*, @hostnames : Array | Nil = nil, @ip : String | Nil = nil)
    end
  end
end
