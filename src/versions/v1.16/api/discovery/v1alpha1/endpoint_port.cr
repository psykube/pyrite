# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # EndpointPort represents a Port used by an EndpointSlice
  class Api::Discovery::V1alpha1::EndpointPort
    # The name of this port. All ports in an EndpointSlice must have a unique name. If the EndpointSlice is dervied from a Kubernetes service, this corresponds to the Service.ports[].name. Name must either be an empty string or pass IANA_SVC_NAME validation: * must be no more than 15 characters long * may contain only [-a-z0-9] * must contain at least one letter [a-z] * it must not start or end with a hyphen, nor contain adjacent hyphens Default is empty string.
    property name : String | Nil

    # The port number of the endpoint. If this is not specified, ports are not restricted and must be interpreted in the context of the specific consumer.
    property port : Int32 | Nil

    # The IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP.
    property protocol : String | Nil

    ::YAML.mapping({
      name:     {type: String, nilable: true, key: "name", getter: false, setter: false},
      port:     {type: Int32, nilable: true, key: "port", getter: false, setter: false},
      protocol: {type: String, nilable: true, key: "protocol", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      name:     {type: String, nilable: true, key: "name", getter: false, setter: false},
      port:     {type: Int32, nilable: true, key: "port", getter: false, setter: false},
      protocol: {type: String, nilable: true, key: "protocol", getter: false, setter: false},
    }, true)

    def initialize(*, @name : String | Nil = nil, @port : Int32 | Nil = nil, @protocol : String | Nil = nil)
    end
  end
end
