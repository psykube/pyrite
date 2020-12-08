# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # IngressStatus describe the current state of the Ingress.
  class Api::Extensions::V1beta1::IngressStatus
    # LoadBalancer contains the current status of the load-balancer.
    property load_balancer : Api::Core::V1::LoadBalancerStatus | Nil

    ::YAML.mapping({
      load_balancer: {type: Api::Core::V1::LoadBalancerStatus, nilable: true, key: "loadBalancer", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      load_balancer: {type: Api::Core::V1::LoadBalancerStatus, nilable: true, key: "loadBalancer", getter: false, setter: false},
    }, true)

    def initialize(*, @load_balancer : Api::Core::V1::LoadBalancerStatus | Nil = nil)
    end
  end
end
