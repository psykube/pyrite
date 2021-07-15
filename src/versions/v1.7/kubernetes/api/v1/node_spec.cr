# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NodeSpec describes the attributes that a node is created with.
  class Kubernetes::Api::V1::NodeSpec < Kubernetes::Spec
    # External ID of the node assigned by some machine database (e.g. a cloud provider). Deprecated.
    @[::JSON::Field(key: "externalID")]
    @[::YAML::Field(key: "externalID")]
    property external_id : String | Nil

    # PodCIDR represents the pod IP range assigned to the node.
    @[::JSON::Field(key: "podCIDR")]
    @[::YAML::Field(key: "podCIDR")]
    property pod_cidr : String | Nil

    # ID of the node assigned by the cloud provider in the format: <ProviderName>://<ProviderSpecificNodeID>
    @[::JSON::Field(key: "providerID")]
    @[::YAML::Field(key: "providerID")]
    property provider_id : String | Nil

    # If specified, the node's taints.
    @[::JSON::Field(key: "taints")]
    @[::YAML::Field(key: "taints")]
    property taints : Array(Kubernetes::Api::V1::Taint) | Nil

    # Unschedulable controls node schedulability of new pods. By default, node is schedulable. More info: [https://kubernetes.io/docs/concepts/nodes/node/#manual-node-administration](https://kubernetes.io/docs/concepts/nodes/node/#manual-node-administration)
    @[::JSON::Field(key: "unschedulable")]
    @[::YAML::Field(key: "unschedulable")]
    property unschedulable : Bool | Nil

    def initialize(*, @external_id : String | Nil = nil, @pod_cidr : String | Nil = nil, @provider_id : String | Nil = nil, @taints : Array | Nil = nil, @unschedulable : Bool | Nil = nil)
    end
  end
end
