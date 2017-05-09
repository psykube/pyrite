# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_1
  # IngressStatus describe the current state of the Ingress.
  class Definitions::V1beta1::IngressStatus
    # LoadBalancer contains the current status of the load-balancer.
    property load_balancer : V1::LoadBalancerStatus

    YAML.mapping({load_balancer: {type: V1::LoadBalancerStatus, nilable: true, key: loadBalancer, getter: false, setter: false}}, true)

    JSON.mapping({load_balancer: {type: V1::LoadBalancerStatus, nilable: true, key: loadBalancer, getter: false, setter: false}}, true)

    def initialize(@load_balancer : V1::LoadBalancerStatus = nil)
    end
  end
end
