# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NetworkPolicyPeer describes a peer to allow traffic from. Only certain combinations of fields are allowed
  class Api::Networking::V1::NetworkPolicyPeer
    include ::JSON::Serializable
    include ::YAML::Serializable

    # IPBlock defines policy on a particular IPBlock. If this field is set then neither of the other fields can be.
    @[JSON::Field(key: "ipBlock")]
    @[YAML::Field(key: "ipBlock")]
    property ip_block : Api::Networking::V1::IPBlock | Nil

    # Selects Namespaces using cluster-scoped labels. This field follows standard label selector semantics; if present but empty, it selects all namespaces.
    #
    # If PodSelector is also set, then the NetworkPolicyPeer as a whole selects the Pods matching PodSelector in the Namespaces selected by NamespaceSelector. Otherwise it selects all Pods in the Namespaces selected by NamespaceSelector.
    @[JSON::Field(key: "namespaceSelector")]
    @[YAML::Field(key: "namespaceSelector")]
    property namespace_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # This is a label selector which selects Pods. This field follows standard label selector semantics; if present but empty, it selects all pods.
    #
    # If NamespaceSelector is also set, then the NetworkPolicyPeer as a whole selects the Pods matching PodSelector in the Namespaces selected by NamespaceSelector. Otherwise it selects the Pods matching PodSelector in the policy's own Namespace.
    @[JSON::Field(key: "podSelector")]
    @[YAML::Field(key: "podSelector")]
    property pod_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    def initialize(*, @ip_block : Api::Networking::V1::IPBlock | Nil = nil, @namespace_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @pod_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil)
    end
  end
end
