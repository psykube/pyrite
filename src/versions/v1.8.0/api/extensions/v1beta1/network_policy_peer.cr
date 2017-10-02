# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  class Api::Extensions::V1beta1::NetworkPolicyPeer
    # IPBlock defines policy on a particular IPBlock
    property ip_block : Api::Extensions::V1beta1::IPBlock | Nil

    # Selects Namespaces using cluster scoped-labels.  This matches all pods in all namespaces selected by this label selector. This field follows standard label selector semantics. If present but empty, this selector selects all namespaces.
    property namespace_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # This is a label selector which selects Pods in this namespace. This field follows standard label selector semantics. If present but empty, this selector selects all pods in this namespace.
    property pod_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    YAML.mapping({
      ip_block:           {type: Api::Extensions::V1beta1::IPBlock, nilable: true, key: "ipBlock", getter: false, setter: false},
      namespace_selector: {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "namespaceSelector", getter: false, setter: false},
      pod_selector:       {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "podSelector", getter: false, setter: false},
    }, true)

    JSON.mapping({
      ip_block:           {type: Api::Extensions::V1beta1::IPBlock, nilable: true, key: "ipBlock", getter: false, setter: false},
      namespace_selector: {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "namespaceSelector", getter: false, setter: false},
      pod_selector:       {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "podSelector", getter: false, setter: false},
    }, true)

    def initialize(*, @ip_block : Api::Extensions::V1beta1::IPBlock | Nil = nil, @namespace_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @pod_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil)
    end
  end
end
