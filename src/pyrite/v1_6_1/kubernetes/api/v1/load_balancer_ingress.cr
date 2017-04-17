# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# LoadBalancerIngress represents the status of a load-balancer ingress point: traffic intended for the service should be sent to an ingress point.
class Pyrite::V1_6_1::Kubernetes::Api::V1::LoadBalancerIngress
  # Hostname is set for load-balancer ingress points that are DNS based (typically AWS load-balancers)
  property hostname : String?

  # IP is set for load-balancer ingress points that are IP based (typically GCE or OpenStack load-balancers)
  property ip : String?

  YAML.mapping({hostname: {type: String, nilable: true, key: hostname, getter: false, setter: false},
                ip:       {type: String, nilable: true, key: ip, getter: false, setter: false}}, true)

  JSON.mapping({hostname: {type: String, nilable: true, key: hostname, getter: false, setter: false},
                ip:       {type: String, nilable: true, key: ip, getter: false, setter: false}}, true)

  def initialize(@hostname = nil, @ip = nil)
  end
end
