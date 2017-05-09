# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_6
  class Definitions::V1beta1::NetworkPolicyPeer
    # Selects Namespaces using cluster scoped-labels.  This matches all pods in all namespaces selected by this label selector. This field follows standard label selector semantics. If omitted, this selector selects no namespaces. If present but empty, this selector selects all namespaces.
    property namespace_selector : Unversioned::LabelSelector

    # This is a label selector which selects Pods in this namespace. This field follows standard label selector semantics. If not provided, this selector selects no pods. If present but empty, this selector selects all pods in this namespace.
    property pod_selector : Unversioned::LabelSelector

    YAML.mapping({namespace_selector: {type: Unversioned::LabelSelector, nilable: true, key: namespaceSelector, getter: false, setter: false},
                  pod_selector:       {type: Unversioned::LabelSelector, nilable: true, key: podSelector, getter: false, setter: false}}, true)

    JSON.mapping({namespace_selector: {type: Unversioned::LabelSelector, nilable: true, key: namespaceSelector, getter: false, setter: false},
                  pod_selector:       {type: Unversioned::LabelSelector, nilable: true, key: podSelector, getter: false, setter: false}}, true)

    def initialize(@namespace_selector : Unversioned::LabelSelector = nil, @pod_selector : Unversioned::LabelSelector = nil)
    end
  end
end
