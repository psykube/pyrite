# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # IngressStatus describe the current state of the Ingress.
  class Api::Networking::V1::IngressStatus < Kubernetes::Spec
    # LoadBalancer contains the current status of the load-balancer.
    @[::JSON::Field(key: "loadBalancer")]
    @[::YAML::Field(key: "loadBalancer")]
    property load_balancer : Api::Core::V1::LoadBalancerStatus | Nil

    def initialize(*, @load_balancer : Api::Core::V1::LoadBalancerStatus | Nil = nil)
    end
  end
end
