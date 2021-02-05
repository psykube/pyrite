# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NetworkPolicyIngressRule describes a particular set of traffic that is allowed to the pods matched by a NetworkPolicySpec's podSelector. The traffic must match both ports and from.
  class Api::Networking::V1::NetworkPolicyIngressRule
    include ::JSON::Serializable
    include ::YAML::Serializable

    # List of sources which should be able to access the pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all sources (traffic not restricted by source). If this field is present and contains at least on item, this rule allows traffic only if the traffic matches at least one item in the from list.
    @[::JSON::Field(key: "from")]
    @[::YAML::Field(key: "from")]
    property from : Array(Api::Networking::V1::NetworkPolicyPeer) | Nil

    # List of ports which should be made accessible on the pods selected for this rule. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.
    @[::JSON::Field(key: "ports")]
    @[::YAML::Field(key: "ports")]
    property ports : Array(Api::Networking::V1::NetworkPolicyPort) | Nil

    def initialize(*, @from : Array | Nil = nil, @ports : Array | Nil = nil)
    end
  end
end
