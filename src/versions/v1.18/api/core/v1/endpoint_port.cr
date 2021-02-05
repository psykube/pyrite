# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # EndpointPort is a tuple that describes a single port.
  class Api::Core::V1::EndpointPort
    include ::JSON::Serializable
    include ::YAML::Serializable

    # The application protocol for this port. This field follows standard Kubernetes label syntax. Un-prefixed names are reserved for IANA standard service names (as per RFC-6335 and [http://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names such as mycompany.com/my-custom-protocol. Field can be enabled with ServiceAppProtocol feature gate.](http://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names such as mycompany.com/my-custom-protocol. Field can be enabled with ServiceAppProtocol feature gate.)
    @[JSON::Field(key: "appProtocol")]
    @[YAML::Field(key: "appProtocol")]
    property app_protocol : String | Nil

    # The name of this port.  This must match the 'name' field in the corresponding ServicePort. Must be a DNS_LABEL. Optional only if one port is defined.
    @[JSON::Field(key: "name")]
    @[YAML::Field(key: "name")]
    property name : String | Nil

    # The port number of the endpoint.
    @[JSON::Field(key: "port")]
    @[YAML::Field(key: "port")]
    property port : Int32

    # The IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP.
    @[JSON::Field(key: "protocol")]
    @[YAML::Field(key: "protocol")]
    property protocol : String | Nil

    def initialize(*, @app_protocol : String | Nil = nil, @name : String | Nil = nil, @port : Int32, @protocol : String | Nil = nil)
    end
  end
end
