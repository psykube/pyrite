# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # IngressStatus describe the current state of the Ingress.
  class Kubernetes::Apis::Extensions::V1beta1::IngressStatus < Kubernetes::Spec
    # LoadBalancer contains the current status of the load-balancer.
    @[::JSON::Field(key: "loadBalancer")]
    @[::YAML::Field(key: "loadBalancer")]
    property load_balancer : Kubernetes::Api::V1::LoadBalancerStatus | Nil

    def initialize(*, @load_balancer : Kubernetes::Api::V1::LoadBalancerStatus | Nil = nil)
    end
  end
end
