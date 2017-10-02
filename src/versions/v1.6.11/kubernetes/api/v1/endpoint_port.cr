# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # EndpointPort is a tuple that describes a single port.
  class Kubernetes::Api::V1::EndpointPort
    # The name of this port (corresponds to ServicePort.Name). Must be a DNS_LABEL. Optional only if one port is defined.
    property name : String | Nil

    # The port number of the endpoint.
    property port : Int32

    # The IP protocol for this port. Must be UDP or TCP. Default is TCP.
    property protocol : String | Nil

    YAML.mapping({
      name:     {type: String, nilable: true, key: "name", getter: false, setter: false},
      port:     {type: Int32, nilable: false, key: "port", getter: false, setter: false},
      protocol: {type: String, nilable: true, key: "protocol", getter: false, setter: false},
    }, true)

    JSON.mapping({
      name:     {type: String, nilable: true, key: "name", getter: false, setter: false},
      port:     {type: Int32, nilable: false, key: "port", getter: false, setter: false},
      protocol: {type: String, nilable: true, key: "protocol", getter: false, setter: false},
    }, true)

    def initialize(*, @name : String | Nil = nil, @port : Int32 | Nil = nil, @protocol : String | Nil = nil)
    end
  end
end
