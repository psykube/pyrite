# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ServiceStatus represents the current status of a service.
  class Kubernetes::Api::V1::ServiceStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # LoadBalancer contains the current status of the load-balancer, if one is present.
    @[JSON::Field(key: "loadBalancer")]
    @[YAML::Field(key: "loadBalancer")]
    property load_balancer : Kubernetes::Api::V1::LoadBalancerStatus | Nil

    def initialize(*, @load_balancer : Kubernetes::Api::V1::LoadBalancerStatus | Nil = nil)
    end
  end
end
