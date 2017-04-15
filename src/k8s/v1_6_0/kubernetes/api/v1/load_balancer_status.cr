require "yaml"
require "json"

# LoadBalancerStatus represents the status of a load-balancer.
class K8S::V1_6_0::Kubernetes::Api::V1::LoadBalancerStatus
  # Ingress is a list containing ingress points for the load-balancer.Traffic intended for the service should be sent to these ingress points.
  property ingress : Array(::K8S::V1_6_0::Kubernetes::Api::V1::LoadBalancerIngress)?

  YAML.mapping({ingress: {type: Array(::K8S::V1_6_0::Kubernetes::Api::V1::LoadBalancerIngress), nilable: true, key: ingress, getter: false, setter: false}}, true)

  JSON.mapping({ingress: {type: Array(::K8S::V1_6_0::Kubernetes::Api::V1::LoadBalancerIngress), nilable: true, key: ingress, getter: false, setter: false}}, true)

  def initialize(@ingress = nil)
  end
end
