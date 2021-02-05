# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ServicePort contains information on service's port.
  class Api::Core::V1::ServicePort
    include ::JSON::Serializable
    include ::YAML::Serializable

    # The application protocol for this port. This field follows standard Kubernetes label syntax. Un-prefixed names are reserved for IANA standard service names (as per RFC-6335 and [http://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names such as mycompany.com/my-custom-protocol. This is a beta field that is guarded by the ServiceAppProtocol feature gate and enabled by default.](http://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names such as mycompany.com/my-custom-protocol. This is a beta field that is guarded by the ServiceAppProtocol feature gate and enabled by default.)
    @[JSON::Field(key: "appProtocol")]
    @[YAML::Field(key: "appProtocol")]
    property app_protocol : String | Nil

    # The name of this port within the service. This must be a DNS_LABEL. All ports within a ServiceSpec must have unique names. When considering the endpoints for a Service, this must match the 'name' field in the EndpointPort. Optional if only one ServicePort is defined on this service.
    @[JSON::Field(key: "name")]
    @[YAML::Field(key: "name")]
    property name : String | Nil

    # The port on each node on which this service is exposed when type=NodePort or LoadBalancer. Usually assigned by the system. If specified, it will be allocated to the service if unused or else creation of the service will fail. Default is to auto-allocate a port if the ServiceType of this Service requires one. More info: [https://kubernetes.io/docs/concepts/services-networking/service/#type-nodeport](https://kubernetes.io/docs/concepts/services-networking/service/#type-nodeport)
    @[JSON::Field(key: "nodePort")]
    @[YAML::Field(key: "nodePort")]
    property node_port : Int32 | Nil

    # The port that will be exposed by this service.
    @[JSON::Field(key: "port")]
    @[YAML::Field(key: "port")]
    property port : Int32

    # The IP protocol for this port. Supports "TCP", "UDP", and "SCTP". Default is TCP.
    @[JSON::Field(key: "protocol")]
    @[YAML::Field(key: "protocol")]
    property protocol : String | Nil

    # Number or name of the port to access on the pods targeted by the service. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME. If this is a string, it will be looked up as a named port in the target Pod's container ports. If this is not specified, the value of the 'port' field is used (an identity map). This field is ignored for services with clusterIP=None, and should be omitted or set equal to the 'port' field. More info: [https://kubernetes.io/docs/concepts/services-networking/service/#defining-a-service](https://kubernetes.io/docs/concepts/services-networking/service/#defining-a-service)
    @[JSON::Field(key: "targetPort")]
    @[YAML::Field(key: "targetPort")]
    property target_port : Int32 | String | Nil

    def initialize(*, @app_protocol : String | Nil = nil, @name : String | Nil = nil, @node_port : Int32 | Nil = nil, @port : Int32, @protocol : String | Nil = nil, @target_port : Int32 | String | Nil = nil)
    end
  end
end
