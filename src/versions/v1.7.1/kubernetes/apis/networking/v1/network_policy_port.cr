# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NetworkPolicyPort describes a port to allow traffic on
  class Kubernetes::Apis::Networking::V1::NetworkPolicyPort
    # The port on the given protocol. This can either be a numerical or named port on a pod. If this field is not provided, this matches all port names and numbers.
    property port : Int32 | String | Nil

    # The protocol (TCP or UDP) which traffic must match. If not specified, this field defaults to TCP.
    property protocol : String | Nil

    YAML.mapping({
      port:     {type: Int32 | String, nilable: true, key: "port", getter: false, setter: false},
      protocol: {type: String, nilable: true, key: "protocol", getter: false, setter: false},
    }, true)

    JSON.mapping({
      port:     {type: Int32 | String, nilable: true, key: "port", getter: false, setter: false},
      protocol: {type: String, nilable: true, key: "protocol", getter: false, setter: false},
    }, true)

    def initialize(*, @port : Int32 | String | Nil = nil, @protocol : String | Nil = nil)
    end
  end
end
