# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  class Kubernetes::Apis::Extensions::V1beta1::NetworkPolicyPort
    # If specified, the port on the given protocol.  This can either be a numerical or named port on a pod.  If this field is not provided, this matches all port names and numbers. If present, only traffic on the specified protocol AND port will be matched.
    property port : Int32 | String | Nil

    # Optional.  The protocol (TCP or UDP) which traffic must match. If not specified, this field defaults to TCP.
    property protocol : String | Nil

    YAML.mapping({
      port:     {type: Int32 | String, nilable: true, key: "port"},
      protocol: {type: String, nilable: true, key: "protocol"},
    }, true)

    JSON.mapping({
      port:     {type: Int32 | String, nilable: true, key: "port"},
      protocol: {type: String, nilable: true, key: "protocol"},
    }, true)

    def initialize(*, @port : Int32 | String | Nil = nil, @protocol : String | Nil = nil)
    end
  end
end
