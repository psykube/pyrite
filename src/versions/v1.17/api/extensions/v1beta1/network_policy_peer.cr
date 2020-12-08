# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # DEPRECATED 1.9 - This group version of NetworkPolicyPeer is deprecated by [networking/v1/NetworkPolicyPeer.](networking/v1/NetworkPolicyPeer.)
  class Api::Extensions::V1beta1::NetworkPolicyPeer
    # IPBlock defines policy on a particular IPBlock. If this field is set then neither of the other fields can be.
    property ip_block : Api::Extensions::V1beta1::IPBlock | Nil

    # Selects Namespaces using cluster-scoped labels. This field follows standard label selector semantics; if present but empty, it selects all namespaces.
    #
    # If PodSelector is also set, then the NetworkPolicyPeer as a whole selects the Pods matching PodSelector in the Namespaces selected by NamespaceSelector. Otherwise it selects all Pods in the Namespaces selected by NamespaceSelector.
    property namespace_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # This is a label selector which selects Pods. This field follows standard label selector semantics; if present but empty, it selects all pods.
    #
    # If NamespaceSelector is also set, then the NetworkPolicyPeer as a whole selects the Pods matching PodSelector in the Namespaces selected by NamespaceSelector. Otherwise it selects the Pods matching PodSelector in the policy's own Namespace.
    property pod_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    ::YAML.mapping({
      ip_block:           {type: Api::Extensions::V1beta1::IPBlock, nilable: true, key: "ipBlock", getter: false, setter: false},
      namespace_selector: {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "namespaceSelector", getter: false, setter: false},
      pod_selector:       {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "podSelector", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      ip_block:           {type: Api::Extensions::V1beta1::IPBlock, nilable: true, key: "ipBlock", getter: false, setter: false},
      namespace_selector: {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "namespaceSelector", getter: false, setter: false},
      pod_selector:       {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "podSelector", getter: false, setter: false},
    }, true)

    def initialize(*, @ip_block : Api::Extensions::V1beta1::IPBlock | Nil = nil, @namespace_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @pod_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil)
    end
  end
end
