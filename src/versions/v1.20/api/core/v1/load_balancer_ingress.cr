# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # LoadBalancerIngress represents the status of a load-balancer ingress point: traffic intended for the service should be sent to an ingress point.
  class Api::Core::V1::LoadBalancerIngress
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Hostname is set for load-balancer ingress points that are DNS based (typically AWS load-balancers)
    @[JSON::Field(key: "hostname")]
    @[YAML::Field(key: "hostname")]
    property hostname : String | Nil

    # IP is set for load-balancer ingress points that are IP based (typically GCE or OpenStack load-balancers)
    @[JSON::Field(key: "ip")]
    @[YAML::Field(key: "ip")]
    property ip : String | Nil

    # Ports is a list of records of service ports If used, every port defined in the service should have an entry in it
    @[JSON::Field(key: "ports")]
    @[YAML::Field(key: "ports")]
    property ports : Array(Api::Core::V1::PortStatus) | Nil

    def initialize(*, @hostname : String | Nil = nil, @ip : String | Nil = nil, @ports : Array | Nil = nil)
    end
  end
end
