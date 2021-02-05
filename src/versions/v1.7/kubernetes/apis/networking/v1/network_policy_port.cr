# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NetworkPolicyPort describes a port to allow traffic on
  class Kubernetes::Apis::Networking::V1::NetworkPolicyPort
    include ::JSON::Serializable
    include ::YAML::Serializable

    # The port on the given protocol. This can either be a numerical or named port on a pod. If this field is not provided, this matches all port names and numbers.
    @[::JSON::Field(key: "port")]
    @[::YAML::Field(key: "port")]
    property port : Int32 | String | Nil

    # The protocol (TCP or UDP) which traffic must match. If not specified, this field defaults to TCP.
    @[::JSON::Field(key: "protocol")]
    @[::YAML::Field(key: "protocol")]
    property protocol : String | Nil

    def initialize(*, @port : Int32 | String | Nil = nil, @protocol : String | Nil = nil)
    end
  end
end
