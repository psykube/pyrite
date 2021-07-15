# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NetworkPolicyPeer describes a peer to allow traffic from. Exactly one of its fields must be specified.
  class Kubernetes::Apis::Networking::V1::NetworkPolicyPeer < Kubernetes::Spec
    # Selects Namespaces using cluster scoped-labels. This matches all pods in all namespaces selected by this label selector. This field follows standard label selector semantics. If present but empty, this selector selects all namespaces.
    @[::JSON::Field(key: "namespaceSelector")]
    @[::YAML::Field(key: "namespaceSelector")]
    property namespace_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # This is a label selector which selects Pods in this namespace. This field follows standard label selector semantics. If present but empty, this selector selects all pods in this namespace.
    @[::JSON::Field(key: "podSelector")]
    @[::YAML::Field(key: "podSelector")]
    property pod_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    def initialize(*, @namespace_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @pod_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil)
    end
  end
end
