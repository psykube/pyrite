# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # DEPRECATED 1.9 - This group version of NetworkPolicyIngressRule is deprecated by [networking/v1/NetworkPolicyIngressRule. This NetworkPolicyIngressRule matches traffic if and only if the traffic matches both ports AND from.](networking/v1/NetworkPolicyIngressRule. This NetworkPolicyIngressRule matches traffic if and only if the traffic matches both ports AND from.)
  class Api::Extensions::V1beta1::NetworkPolicyIngressRule
    # List of sources which should be able to access the pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all sources (traffic not restricted by source). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the from list.
    property from : Array(Api::Extensions::V1beta1::NetworkPolicyPeer) | Nil

    # List of ports which should be made accessible on the pods selected for this rule. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.
    property ports : Array(Api::Extensions::V1beta1::NetworkPolicyPort) | Nil

    ::YAML.mapping({
      from:  {type: Array(Api::Extensions::V1beta1::NetworkPolicyPeer), nilable: true, key: "from", getter: false, setter: false},
      ports: {type: Array(Api::Extensions::V1beta1::NetworkPolicyPort), nilable: true, key: "ports", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      from:  {type: Array(Api::Extensions::V1beta1::NetworkPolicyPeer), nilable: true, key: "from", getter: false, setter: false},
      ports: {type: Array(Api::Extensions::V1beta1::NetworkPolicyPort), nilable: true, key: "ports", getter: false, setter: false},
    }, true)

    def initialize(*, @from : Array | Nil = nil, @ports : Array | Nil = nil)
    end
  end
end
