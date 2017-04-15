require "yaml"
require "json"

class K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::NetworkPolicyPort
  # If specified, the port on the given protocol. This can either be a numerical or named port on a pod. If this field is not provided, this matches all port names and numbers.If present, only traffic on the specified protocol AND port will be matched.
  property port : ::K8S::V1_6_1::Apimachinery::Util::Intstr::IntOrString

  # Optional. The protocol (TCP or UDP) which traffic must match.If not specified, this field defaults to TCP.
  property protocol : String?

  YAML.mapping({port:     {type: ::K8S::V1_6_1::Apimachinery::Util::Intstr::IntOrString, nilable: true, key: port, getter: false, setter: false},
                protocol: {type: String, nilable: true, key: protocol, getter: false, setter: false}}, true)

  JSON.mapping({port:     {type: ::K8S::V1_6_1::Apimachinery::Util::Intstr::IntOrString, nilable: true, key: port, getter: false, setter: false},
                protocol: {type: String, nilable: true, key: protocol, getter: false, setter: false}}, true)

  def initialize(@port = nil, @protocol = nil)
  end
end
