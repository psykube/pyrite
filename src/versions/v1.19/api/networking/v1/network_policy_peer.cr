# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NetworkPolicyPeer describes a peer to allow traffic [to/from. Only certain combinations of fields are allowed](to/from. Only certain combinations of fields are allowed)
  class Api::Networking::V1::NetworkPolicyPeer
    # IPBlock defines policy on a particular IPBlock. If this field is set then neither of the other fields can be.
    property ip_block : Api::Networking::V1::IPBlock | Nil

    # Selects Namespaces using cluster-scoped labels. This field follows standard label selector semantics; if present but empty, it selects all namespaces.
    #
    # If PodSelector is also set, then the NetworkPolicyPeer as a whole selects the Pods matching PodSelector in the Namespaces selected by NamespaceSelector. Otherwise it selects all Pods in the Namespaces selected by NamespaceSelector.
    property namespace_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # This is a label selector which selects Pods. This field follows standard label selector semantics; if present but empty, it selects all pods.
    #
    # If NamespaceSelector is also set, then the NetworkPolicyPeer as a whole selects the Pods matching PodSelector in the Namespaces selected by NamespaceSelector. Otherwise it selects the Pods matching PodSelector in the policy's own Namespace.
    property pod_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    ::YAML.mapping({
      ip_block:           {type: Api::Networking::V1::IPBlock, nilable: true, key: "ipBlock", getter: false, setter: false},
      namespace_selector: {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "namespaceSelector", getter: false, setter: false},
      pod_selector:       {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "podSelector", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      ip_block:           {type: Api::Networking::V1::IPBlock, nilable: true, key: "ipBlock", getter: false, setter: false},
      namespace_selector: {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "namespaceSelector", getter: false, setter: false},
      pod_selector:       {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "podSelector", getter: false, setter: false},
    }, true)

    def initialize(*, @ip_block : Api::Networking::V1::IPBlock | Nil = nil, @namespace_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @pod_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil)
    end
  end
end
