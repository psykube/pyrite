# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

class Pyrite::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::NetworkPolicyPeer
  # Selects Namespaces using cluster scoped-labels.  This matches all pods in all namespaces selected by this label selector. This field follows standard label selector semantics. If omitted, this selector selects no namespaces. If present but empty, this selector selects all namespaces.
  property namespace_selector : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::LabelSelector

  # This is a label selector which selects Pods in this namespace. This field follows standard label selector semantics. If not provided, this selector selects no pods. If present but empty, this selector selects all pods in this namespace.
  property pod_selector : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::LabelSelector

  YAML.mapping({namespace_selector: {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: namespaceSelector, getter: false, setter: false},
                pod_selector:       {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: podSelector, getter: false, setter: false}}, true)

  JSON.mapping({namespace_selector: {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: namespaceSelector, getter: false, setter: false},
                pod_selector:       {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: podSelector, getter: false, setter: false}}, true)

  def initialize(@namespace_selector : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::LabelSelector = nil, @pod_selector : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::LabelSelector = nil)
  end
end
