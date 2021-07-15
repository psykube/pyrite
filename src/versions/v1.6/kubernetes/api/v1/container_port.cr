# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ContainerPort represents a network port in a single container.
  class Kubernetes::Api::V1::ContainerPort < Kubernetes::Spec
    # Number of port to expose on the pod's IP address. This must be a valid port number, 0 < x < 65536.
    @[::JSON::Field(key: "containerPort")]
    @[::YAML::Field(key: "containerPort")]
    property container_port : Int32

    # What host IP to bind the external port to.
    @[::JSON::Field(key: "hostIP")]
    @[::YAML::Field(key: "hostIP")]
    property host_ip : String | Nil

    # Number of port to expose on the host. If specified, this must be a valid port number, 0 < x < 65536. If HostNetwork is specified, this must match ContainerPort. Most containers do not need this.
    @[::JSON::Field(key: "hostPort")]
    @[::YAML::Field(key: "hostPort")]
    property host_port : Int32 | Nil

    # If specified, this must be an IANA_SVC_NAME and unique within the pod. Each named port in a pod must have a unique name. Name for the port that can be referred to by services.
    @[::JSON::Field(key: "name")]
    @[::YAML::Field(key: "name")]
    property name : String | Nil

    # Protocol for port. Must be UDP or TCP. Defaults to "TCP".
    @[::JSON::Field(key: "protocol")]
    @[::YAML::Field(key: "protocol")]
    property protocol : String | Nil

    def initialize(*, @container_port : Int32, @host_ip : String | Nil = nil, @host_port : Int32 | Nil = nil, @name : String | Nil = nil, @protocol : String | Nil = nil)
    end
  end
end
