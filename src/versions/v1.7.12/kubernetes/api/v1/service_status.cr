# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ServiceStatus represents the current status of a service.
  class Kubernetes::Api::V1::ServiceStatus
    # LoadBalancer contains the current status of the load-balancer, if one is present.
    property load_balancer : Kubernetes::Api::V1::LoadBalancerStatus | Nil

    ::YAML.mapping({
      load_balancer: {type: Kubernetes::Api::V1::LoadBalancerStatus, nilable: true, key: "loadBalancer", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      load_balancer: {type: Kubernetes::Api::V1::LoadBalancerStatus, nilable: true, key: "loadBalancer", getter: false, setter: false},
    }, true)

    def initialize(*, @load_balancer : Kubernetes::Api::V1::LoadBalancerStatus | Nil = nil)
    end
  end
end
