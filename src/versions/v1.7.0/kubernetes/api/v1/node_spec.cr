# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NodeSpec describes the attributes that a node is created with.
  class Kubernetes::Api::V1::NodeSpec
    # External ID of the node assigned by some machine database (e.g. a cloud provider). Deprecated.
    property external_id : String | Nil

    # PodCIDR represents the pod IP range assigned to the node.
    property pod_cid_r : String | Nil

    # ID of the node assigned by the cloud provider in the format: <ProviderName>://<ProviderSpecificNodeID>
    property provider_id : String | Nil

    # If specified, the node's taints.
    property taints : Array(Kubernetes::Api::V1::Taint) | Nil

    # Unschedulable controls node schedulability of new pods. By default, node is schedulable. More info: [https://kubernetes.io/docs/concepts/nodes/node/#manual-node-administration](https://kubernetes.io/docs/concepts/nodes/node/#manual-node-administration)
    property unschedulable : Bool | Nil

    YAML.mapping({
      external_id:   {type: String, nilable: true, key: "externalID", getter: false, setter: false},
      pod_cid_r:     {type: String, nilable: true, key: "podCIDR", getter: false, setter: false},
      provider_id:   {type: String, nilable: true, key: "providerID", getter: false, setter: false},
      taints:        {type: Array(Kubernetes::Api::V1::Taint), nilable: true, key: "taints", getter: false, setter: false},
      unschedulable: {type: Bool, nilable: true, key: "unschedulable", getter: false, setter: false},
    }, true)

    JSON.mapping({
      external_id:   {type: String, nilable: true, key: "externalID", getter: false, setter: false},
      pod_cid_r:     {type: String, nilable: true, key: "podCIDR", getter: false, setter: false},
      provider_id:   {type: String, nilable: true, key: "providerID", getter: false, setter: false},
      taints:        {type: Array(Kubernetes::Api::V1::Taint), nilable: true, key: "taints", getter: false, setter: false},
      unschedulable: {type: Bool, nilable: true, key: "unschedulable", getter: false, setter: false},
    }, true)

    def initialize(*, @external_id : String | Nil = nil, @pod_cid_r : String | Nil = nil, @provider_id : String | Nil = nil, @taints : Array | Nil = nil, @unschedulable : Bool | Nil = nil)
    end
  end
end
