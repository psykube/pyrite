# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_0
  # NodeSpec describes the attributes that a node is created with.
  class Definitions::Kubernetes::Api::V1::NodeSpec
    # External ID of the node assigned by some machine database (e.g. a cloud provider). Deprecated.
    property external_id : String?

    # PodCIDR represents the pod IP range assigned to the node.
    property pod_cidr : String?

    # ID of the node assigned by the cloud provider in the format: <ProviderName>://<ProviderSpecificNodeID>
    property provider_id : String?

    # If specified, the node's taints.
    property taints : Array(Kubernetes::Api::V1::Taint)?

    # Unschedulable controls node schedulability of new pods. By default, node is schedulable. More info: [http://releases.k8s.io/HEAD/docs/admin/node.md#manual-node-administration](http://releases.k8s.io/HEAD/docs/admin/node.md#manual-node-administration)
    property unschedulable : Bool?

    YAML.mapping({external_id:   {type: String, nilable: true, key: externalID, getter: false, setter: false},
                  pod_cidr:      {type: String, nilable: true, key: podCIDR, getter: false, setter: false},
                  provider_id:   {type: String, nilable: true, key: providerID, getter: false, setter: false},
                  taints:        {type: Array(Kubernetes::Api::V1::Taint), nilable: true, key: taints, getter: false, setter: false},
                  unschedulable: {type: Bool, nilable: true, key: unschedulable, getter: false, setter: false}}, true)

    JSON.mapping({external_id:   {type: String, nilable: true, key: externalID, getter: false, setter: false},
                  pod_cidr:      {type: String, nilable: true, key: podCIDR, getter: false, setter: false},
                  provider_id:   {type: String, nilable: true, key: providerID, getter: false, setter: false},
                  taints:        {type: Array(Kubernetes::Api::V1::Taint), nilable: true, key: taints, getter: false, setter: false},
                  unschedulable: {type: Bool, nilable: true, key: unschedulable, getter: false, setter: false}}, true)

    def initialize(@external_id : String? = nil, @pod_cidr : String? = nil, @provider_id : String? = nil, @taints : Array? = nil, @unschedulable : Bool? = nil)
    end
  end
end
