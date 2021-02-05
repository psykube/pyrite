# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # DEPRECATED 1.9 - This group version of NetworkPolicyPort is deprecated by [networking/v1/NetworkPolicyPort.](networking/v1/NetworkPolicyPort.)
  class Api::Extensions::V1beta1::NetworkPolicyPort
    include ::JSON::Serializable
    include ::YAML::Serializable

    # If specified, the port on the given protocol.  This can either be a numerical or named port on a pod.  If this field is not provided, this matches all port names and numbers. If present, only traffic on the specified protocol AND port will be matched.
    @[JSON::Field(key: "port")]
    @[YAML::Field(key: "port")]
    property port : Int32 | String | Nil

    # Optional.  The protocol (TCP, UDP, or SCTP) which traffic must match. If not specified, this field defaults to TCP.
    @[JSON::Field(key: "protocol")]
    @[YAML::Field(key: "protocol")]
    property protocol : String | Nil

    def initialize(*, @port : Int32 | String | Nil = nil, @protocol : String | Nil = nil)
    end
  end
end
