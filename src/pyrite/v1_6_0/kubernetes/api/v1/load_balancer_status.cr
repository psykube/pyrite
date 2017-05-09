# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_0
  # LoadBalancerStatus represents the status of a load-balancer.
  class Definitions::Kubernetes::Api::V1::LoadBalancerStatus
    # Ingress is a list containing ingress points for the load-balancer. Traffic intended for the service should be sent to these ingress points.
    property ingress : Array(Kubernetes::Api::V1::LoadBalancerIngress)?

    YAML.mapping({ingress: {type: Array(Kubernetes::Api::V1::LoadBalancerIngress), nilable: true, key: ingress, getter: false, setter: false}}, true)

    JSON.mapping({ingress: {type: Array(Kubernetes::Api::V1::LoadBalancerIngress), nilable: true, key: ingress, getter: false, setter: false}}, true)

    def initialize(@ingress : Array? = nil)
    end
  end
end
