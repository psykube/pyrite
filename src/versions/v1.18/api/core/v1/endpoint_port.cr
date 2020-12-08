# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # EndpointPort is a tuple that describes a single port.
  class Api::Core::V1::EndpointPort
    # The application protocol for this port. This field follows standard Kubernetes label syntax. Un-prefixed names are reserved for IANA standard service names (as per RFC-6335 and [http://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names such as mycompany.com/my-custom-protocol. Field can be enabled with ServiceAppProtocol feature gate.](http://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names such as mycompany.com/my-custom-protocol. Field can be enabled with ServiceAppProtocol feature gate.)
    property app_protocol : String | Nil

    # The name of this port.  This must match the 'name' field in the corresponding ServicePort. Must be a DNS_LABEL. Optional only if one port is defined.
    property name : String | Nil

    # The port number of the endpoint.
    property port : Int32

    # The IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP.
    property protocol : String | Nil

    ::YAML.mapping({
      app_protocol: {type: String, nilable: true, key: "appProtocol", getter: false, setter: false},
      name:         {type: String, nilable: true, key: "name", getter: false, setter: false},
      port:         {type: Int32, nilable: false, key: "port", getter: false, setter: false},
      protocol:     {type: String, nilable: true, key: "protocol", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      app_protocol: {type: String, nilable: true, key: "appProtocol", getter: false, setter: false},
      name:         {type: String, nilable: true, key: "name", getter: false, setter: false},
      port:         {type: Int32, nilable: false, key: "port", getter: false, setter: false},
      protocol:     {type: String, nilable: true, key: "protocol", getter: false, setter: false},
    }, true)

    def initialize(*, @port : Int32, @app_protocol : String | Nil = nil, @name : String | Nil = nil, @protocol : String | Nil = nil)
    end
  end
end
