# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NodeSpec describes the attributes that a node is created with.
  class Api::Core::V1::NodeSpec
    # If specified, the source to get node configuration from The DynamicKubeletConfig feature gate must be enabled for the Kubelet to use this field
    property config_source : Api::Core::V1::NodeConfigSource | Nil

    # Deprecated. Not all kubelets will set this field. Remove field after 1.13. see: [https://issues.k8s.io/61966](https://issues.k8s.io/61966)
    property external_id : String | Nil

    # PodCIDR represents the pod IP range assigned to the node.
    property pod_cid_r : String | Nil

    # ID of the node assigned by the cloud provider in the format: <ProviderName>://<ProviderSpecificNodeID>
    property provider_id : String | Nil

    # If specified, the node's taints.
    property taints : Array(Api::Core::V1::Taint) | Nil

    # Unschedulable controls node schedulability of new pods. By default, node is schedulable. More info: [https://kubernetes.io/docs/concepts/nodes/node/#manual-node-administration](https://kubernetes.io/docs/concepts/nodes/node/#manual-node-administration)
    property unschedulable : Bool | Nil

    ::YAML.mapping({
      config_source: {type: Api::Core::V1::NodeConfigSource, nilable: true, key: "configSource", getter: false, setter: false},
      external_id:   {type: String, nilable: true, key: "externalID", getter: false, setter: false},
      pod_cid_r:     {type: String, nilable: true, key: "podCIDR", getter: false, setter: false},
      provider_id:   {type: String, nilable: true, key: "providerID", getter: false, setter: false},
      taints:        {type: Array(Api::Core::V1::Taint), nilable: true, key: "taints", getter: false, setter: false},
      unschedulable: {type: Bool, nilable: true, key: "unschedulable", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      config_source: {type: Api::Core::V1::NodeConfigSource, nilable: true, key: "configSource", getter: false, setter: false},
      external_id:   {type: String, nilable: true, key: "externalID", getter: false, setter: false},
      pod_cid_r:     {type: String, nilable: true, key: "podCIDR", getter: false, setter: false},
      provider_id:   {type: String, nilable: true, key: "providerID", getter: false, setter: false},
      taints:        {type: Array(Api::Core::V1::Taint), nilable: true, key: "taints", getter: false, setter: false},
      unschedulable: {type: Bool, nilable: true, key: "unschedulable", getter: false, setter: false},
    }, true)

    def initialize(*, @config_source : Api::Core::V1::NodeConfigSource | Nil = nil, @external_id : String | Nil = nil, @pod_cid_r : String | Nil = nil, @provider_id : String | Nil = nil, @taints : Array | Nil = nil, @unschedulable : Bool | Nil = nil)
    end
  end
end
