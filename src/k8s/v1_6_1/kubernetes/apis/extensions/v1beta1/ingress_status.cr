require "yaml"
require "json"

# IngressStatus describe the current state of the Ingress.
class K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::IngressStatus
  # LoadBalancer contains the current status of the load-balancer.
  property load_balancer : ::K8S::V1_6_1::Kubernetes::Api::V1::LoadBalancerStatus

  YAML.mapping({load_balancer: {type: ::K8S::V1_6_1::Kubernetes::Api::V1::LoadBalancerStatus, nilable: true, key: loadBalancer, getter: false, setter: false}}, true)

  JSON.mapping({load_balancer: {type: ::K8S::V1_6_1::Kubernetes::Api::V1::LoadBalancerStatus, nilable: true, key: loadBalancer, getter: false, setter: false}}, true)

  def initialize(@load_balancer = nil)
  end
end
