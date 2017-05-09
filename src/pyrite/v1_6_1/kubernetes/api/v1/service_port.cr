# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_1
  # ServicePort contains information on service's port.
  class Definitions::Kubernetes::Api::V1::ServicePort
    # The name of this port within the service. This must be a DNS_LABEL. All ports within a ServiceSpec must have unique names. This maps to the 'Name' field in EndpointPort objects. Optional if only one ServicePort is defined on this service.
    property name : String?

    # The port on each node on which this service is exposed when type=NodePort or LoadBalancer. Usually assigned by the system. If specified, it will be allocated to the service if unused or else creation of the service will fail. Default is to auto-allocate a port if the ServiceType of this Service requires one. More info: [http://kubernetes.io/docs/user-guide/services#type--nodeport](http://kubernetes.io/docs/user-guide/services#type--nodeport)
    property node_port : Int32?

    # The port that will be exposed by this service.
    property port : Int32

    # The IP protocol for this port. Supports "TCP" and "UDP". Default is TCP.
    property protocol : String?

    # Number or name of the port to access on the pods targeted by the service. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME. If this is a string, it will be looked up as a named port in the target Pod's container ports. If this is not specified, the value of the 'port' field is used (an identity map). This field is ignored for services with clusterIP=None, and should be omitted or set equal to the 'port' field. More info: [http://kubernetes.io/docs/user-guide/services#defining-a-service](http://kubernetes.io/docs/user-guide/services#defining-a-service)
    property target_port : Apimachinery::Util::Intstr::IntOrString

    YAML.mapping({name:        {type: String, nilable: true, key: name, getter: false, setter: false},
                  node_port:   {type: Int32, nilable: true, key: nodePort, getter: false, setter: false},
                  port:        {type: Int32, nilable: false, key: port, getter: false, setter: false},
                  protocol:    {type: String, nilable: true, key: protocol, getter: false, setter: false},
                  target_port: {type: Apimachinery::Util::Intstr::IntOrString, nilable: true, key: targetPort, getter: false, setter: false}}, true)

    JSON.mapping({name:        {type: String, nilable: true, key: name, getter: false, setter: false},
                  node_port:   {type: Int32, nilable: true, key: nodePort, getter: false, setter: false},
                  port:        {type: Int32, nilable: false, key: port, getter: false, setter: false},
                  protocol:    {type: String, nilable: true, key: protocol, getter: false, setter: false},
                  target_port: {type: Apimachinery::Util::Intstr::IntOrString, nilable: true, key: targetPort, getter: false, setter: false}}, true)

    def initialize(@name : String? = nil, @node_port : Int32? = nil, @port : Int32? = nil, @protocol : String? = nil, @target_port : Apimachinery::Util::Intstr::IntOrString = nil)
    end
  end
end
