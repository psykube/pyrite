# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_1
  # ServiceStatus represents the current status of a service.
  class Definitions::V1::ServiceStatus
    # LoadBalancer contains the current status of the load-balancer, if one is present.
    property load_balancer : V1::LoadBalancerStatus

    YAML.mapping({load_balancer: {type: V1::LoadBalancerStatus, nilable: true, key: loadBalancer, getter: false, setter: false}}, true)

    JSON.mapping({load_balancer: {type: V1::LoadBalancerStatus, nilable: true, key: loadBalancer, getter: false, setter: false}}, true)

    def initialize(@load_balancer : V1::LoadBalancerStatus = nil)
    end
  end
end
