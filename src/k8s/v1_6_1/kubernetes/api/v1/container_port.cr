# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# ContainerPort represents a network port in a single container.
class K8S::V1_6_1::Kubernetes::Api::V1::ContainerPort
  # Number of port to expose on the pod's IP address.This must be a valid port number, 0 < x < 65536.
  property container_port : Int32

  # What host IP to bind the external port to.
  property host_ip : String?

  # Number of port to expose on the host.If specified, this must be a valid port number, 0 < x < 65536.If HostNetwork is specified, this must match ContainerPort.Most containers do not need this.
  property host_port : Int32?

  # If specified, this must be an IANA_SVC_NAME and unique within the pod.Each named port in a pod must have a unique name.Name for the port that can be referred to by services.
  property name : String?

  # Protocol for port.Must be UDP or TCP.Defaults to "TCP".
  property protocol : String?

  YAML.mapping({container_port: {type: Int32, nilable: false, key: containerPort, getter: false, setter: false},
                host_ip:        {type: String, nilable: true, key: hostIP, getter: false, setter: false},
                host_port:      {type: Int32, nilable: true, key: hostPort, getter: false, setter: false},
                name:           {type: String, nilable: true, key: name, getter: false, setter: false},
                protocol:       {type: String, nilable: true, key: protocol, getter: false, setter: false}}, true)

  JSON.mapping({container_port: {type: Int32, nilable: false, key: containerPort, getter: false, setter: false},
                host_ip:        {type: String, nilable: true, key: hostIP, getter: false, setter: false},
                host_port:      {type: Int32, nilable: true, key: hostPort, getter: false, setter: false},
                name:           {type: String, nilable: true, key: name, getter: false, setter: false},
                protocol:       {type: String, nilable: true, key: protocol, getter: false, setter: false}}, true)

  def initialize(@container_port, @host_ip = nil, @host_port = nil, @name = nil, @protocol = nil)
  end
end
