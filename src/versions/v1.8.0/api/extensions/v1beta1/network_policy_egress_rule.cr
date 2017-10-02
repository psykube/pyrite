# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NetworkPolicyEgressRule describes a particular set of traffic that is allowed out of pods matched by a NetworkPolicySpec's podSelector. The traffic must match both ports and to. This type is beta-level in 1.8
  class Api::Extensions::V1beta1::NetworkPolicyEgressRule
    # List of destination ports for outgoing traffic. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.
    property ports : Array(Api::Extensions::V1beta1::NetworkPolicyPort) | Nil

    # List of destinations for outgoing traffic of pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all destinations (traffic not restricted by destination). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the to list.
    property to : Array(Api::Extensions::V1beta1::NetworkPolicyPeer) | Nil

    YAML.mapping({
      ports: {type: Array(Api::Extensions::V1beta1::NetworkPolicyPort), nilable: true, key: "ports", getter: false, setter: false},
      to:    {type: Array(Api::Extensions::V1beta1::NetworkPolicyPeer), nilable: true, key: "to", getter: false, setter: false},
    }, true)

    JSON.mapping({
      ports: {type: Array(Api::Extensions::V1beta1::NetworkPolicyPort), nilable: true, key: "ports", getter: false, setter: false},
      to:    {type: Array(Api::Extensions::V1beta1::NetworkPolicyPeer), nilable: true, key: "to", getter: false, setter: false},
    }, true)

    def initialize(*, @ports : Array | Nil = nil, @to : Array | Nil = nil)
    end
  end
end
