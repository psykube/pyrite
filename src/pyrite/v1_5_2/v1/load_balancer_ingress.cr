# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_2
  # LoadBalancerIngress represents the status of a load-balancer ingress point: traffic intended for the service should be sent to an ingress point.
  class Definitions::V1::LoadBalancerIngress
    # Hostname is set for load-balancer ingress points that are DNS based (typically AWS load-balancers)
    property hostname : String?

    # IP is set for load-balancer ingress points that are IP based (typically GCE or OpenStack load-balancers)
    property ip : String?

    YAML.mapping({hostname: {type: String, nilable: true, key: hostname, getter: false, setter: false},
                  ip:       {type: String, nilable: true, key: ip, getter: false, setter: false}}, true)

    JSON.mapping({hostname: {type: String, nilable: true, key: hostname, getter: false, setter: false},
                  ip:       {type: String, nilable: true, key: ip, getter: false, setter: false}}, true)

    def initialize(@hostname : String? = nil, @ip : String? = nil)
    end
  end
end
