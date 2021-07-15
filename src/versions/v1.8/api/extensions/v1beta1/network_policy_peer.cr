# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  class Api::Extensions::V1beta1::NetworkPolicyPeer < Kubernetes::Spec
    # IPBlock defines policy on a particular IPBlock
    @[::JSON::Field(key: "ipBlock")]
    @[::YAML::Field(key: "ipBlock")]
    property ip_block : Api::Extensions::V1beta1::IPBlock | Nil

    # Selects Namespaces using cluster scoped-labels.  This matches all pods in all namespaces selected by this label selector. This field follows standard label selector semantics. If present but empty, this selector selects all namespaces.
    @[::JSON::Field(key: "namespaceSelector")]
    @[::YAML::Field(key: "namespaceSelector")]
    property namespace_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # This is a label selector which selects Pods in this namespace. This field follows standard label selector semantics. If present but empty, this selector selects all pods in this namespace.
    @[::JSON::Field(key: "podSelector")]
    @[::YAML::Field(key: "podSelector")]
    property pod_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    def initialize(*, @ip_block : Api::Extensions::V1beta1::IPBlock | Nil = nil, @namespace_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @pod_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil)
    end
  end
end
