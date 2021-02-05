# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # LoadBalancerStatus represents the status of a load-balancer.
  class Api::Core::V1::LoadBalancerStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Ingress is a list containing ingress points for the load-balancer. Traffic intended for the service should be sent to these ingress points.
    @[JSON::Field(key: "ingress")]
    @[YAML::Field(key: "ingress")]
    property ingress : Array(Api::Core::V1::LoadBalancerIngress) | Nil

    def initialize(*, @ingress : Array | Nil = nil)
    end
  end
end
