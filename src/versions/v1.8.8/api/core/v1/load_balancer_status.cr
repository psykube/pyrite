# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # LoadBalancerStatus represents the status of a load-balancer.
  class Api::Core::V1::LoadBalancerStatus
    # Ingress is a list containing ingress points for the load-balancer. Traffic intended for the service should be sent to these ingress points.
    property ingress : Array(Api::Core::V1::LoadBalancerIngress) | Nil

    ::YAML.mapping({
      ingress: {type: Array(Api::Core::V1::LoadBalancerIngress), nilable: true, key: "ingress", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      ingress: {type: Array(Api::Core::V1::LoadBalancerIngress), nilable: true, key: "ingress", getter: false, setter: false},
    }, true)

    def initialize(*, @ingress : Array | Nil = nil)
    end
  end
end
