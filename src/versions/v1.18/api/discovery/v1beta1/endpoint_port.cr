# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # EndpointPort represents a Port used by an EndpointSlice
  class Api::Discovery::V1beta1::EndpointPort
    # The application protocol for this port. This field follows standard Kubernetes label syntax. Un-prefixed names are reserved for IANA standard service names (as per RFC-6335 and [http://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names such as mycompany.com/my-custom-protocol.](http://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names such as mycompany.com/my-custom-protocol.)
    property app_protocol : String | Nil

    # The name of this port. All ports in an EndpointSlice must have a unique name. If the EndpointSlice is dervied from a Kubernetes service, this corresponds to the Service.ports[].name. Name must either be an empty string or pass DNS_LABEL validation: * must be no more than 63 characters long. * must consist of lower case alphanumeric characters or '-'. * must start and end with an alphanumeric character. Default is empty string.
    property name : String | Nil

    # The port number of the endpoint. If this is not specified, ports are not restricted and must be interpreted in the context of the specific consumer.
    property port : Int32 | Nil

    # The IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP.
    property protocol : String | Nil

    ::YAML.mapping({
      app_protocol: {type: String, nilable: true, key: "appProtocol", getter: false, setter: false},
      name:         {type: String, nilable: true, key: "name", getter: false, setter: false},
      port:         {type: Int32, nilable: true, key: "port", getter: false, setter: false},
      protocol:     {type: String, nilable: true, key: "protocol", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      app_protocol: {type: String, nilable: true, key: "appProtocol", getter: false, setter: false},
      name:         {type: String, nilable: true, key: "name", getter: false, setter: false},
      port:         {type: Int32, nilable: true, key: "port", getter: false, setter: false},
      protocol:     {type: String, nilable: true, key: "protocol", getter: false, setter: false},
    }, true)

    def initialize(*, @app_protocol : String | Nil = nil, @name : String | Nil = nil, @port : Int32 | Nil = nil, @protocol : String | Nil = nil)
    end
  end
end
