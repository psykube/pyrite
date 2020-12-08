# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Scheduling specifies the scheduling constraints for nodes supporting a RuntimeClass.
  class Api::Node::V1beta1::Scheduling
    # nodeSelector lists labels that must be present on nodes that support this RuntimeClass. Pods using this RuntimeClass can only be scheduled to a node matched by this selector. The RuntimeClass nodeSelector is merged with a pod's existing nodeSelector. Any conflicts will cause the pod to be rejected in admission.
    property node_selector : Hash(String, String) | Nil

    # tolerations are appended (excluding duplicates) to pods running with this RuntimeClass during admission, effectively unioning the set of nodes tolerated by the pod and the RuntimeClass.
    property tolerations : Array(Api::Core::V1::Toleration) | Nil

    ::YAML.mapping({
      node_selector: {type: Hash(String, String), nilable: true, key: "nodeSelector", getter: false, setter: false},
      tolerations:   {type: Array(Api::Core::V1::Toleration), nilable: true, key: "tolerations", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      node_selector: {type: Hash(String, String), nilable: true, key: "nodeSelector", getter: false, setter: false},
      tolerations:   {type: Array(Api::Core::V1::Toleration), nilable: true, key: "tolerations", getter: false, setter: false},
    }, true)

    def initialize(*, @node_selector : Hash(String, String) | Nil = nil, @tolerations : Array | Nil = nil)
    end
  end
end
