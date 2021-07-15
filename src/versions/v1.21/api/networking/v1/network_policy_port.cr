# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NetworkPolicyPort describes a port to allow traffic on
  class Api::Networking::V1::NetworkPolicyPort < Kubernetes::Spec
    # If set, indicates that the range of ports from port to endPort, inclusive, should be allowed by the policy. This field cannot be defined if the port field is not defined or if the port field is defined as a named (string) port. The endPort must be equal or greater than port. This feature is in Alpha state and should be enabled using the Feature Gate "NetworkPolicyEndPort".
    @[::JSON::Field(key: "endPort")]
    @[::YAML::Field(key: "endPort")]
    property end_port : Int32 | Nil

    # The port on the given protocol. This can either be a numerical or named port on a pod. If this field is not provided, this matches all port names and numbers. If present, only traffic on the specified protocol AND port will be matched.
    @[::JSON::Field(key: "port")]
    @[::YAML::Field(key: "port")]
    property port : Int32 | String | Nil

    # The protocol (TCP, UDP, or SCTP) which traffic must match. If not specified, this field defaults to TCP.
    @[::JSON::Field(key: "protocol")]
    @[::YAML::Field(key: "protocol")]
    property protocol : String | Nil

    def initialize(*, @end_port : Int32 | Nil = nil, @port : Int32 | String | Nil = nil, @protocol : String | Nil = nil)
    end
  end
end
