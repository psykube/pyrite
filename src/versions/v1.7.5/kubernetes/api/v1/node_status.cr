# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NodeStatus is information about the current status of a node.
  class Kubernetes::Api::V1::NodeStatus
    # List of addresses reachable to the node. Queried from cloud provider, if available. More info: [https://kubernetes.io/docs/concepts/nodes/node/#addresses](https://kubernetes.io/docs/concepts/nodes/node/#addresses)
    property addresses : Array(Kubernetes::Api::V1::NodeAddress) | Nil

    # Allocatable represents the resources of a node that are available for scheduling. Defaults to Capacity.
    property allocatable : Hash(String, String) | Nil

    # Capacity represents the total resources of a node. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity](https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity)
    property capacity : Hash(String, String) | Nil

    # Conditions is an array of current observed node conditions. More info: [https://kubernetes.io/docs/concepts/nodes/node/#condition](https://kubernetes.io/docs/concepts/nodes/node/#condition)
    property conditions : Array(Kubernetes::Api::V1::NodeCondition) | Nil

    # Endpoints of daemons running on the Node.
    property daemon_endpoints : Kubernetes::Api::V1::NodeDaemonEndpoints | Nil

    # List of container images on this node
    property images : Array(Kubernetes::Api::V1::ContainerImage) | Nil

    # Set of [ids/uuids to uniquely identify the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#info](ids/uuids to uniquely identify the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#info)
    property node_info : Kubernetes::Api::V1::NodeSystemInfo | Nil

    # NodePhase is the recently observed lifecycle phase of the node. More info: [https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.](https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.)
    property phase : String | Nil

    # List of volumes that are attached to the node.
    property volumes_attached : Array(Kubernetes::Api::V1::AttachedVolume) | Nil

    # List of attachable volumes in use (mounted) by the node.
    property volumes_in_use : Array(String) | Nil

    YAML.mapping({
      addresses:        {type: Array(Kubernetes::Api::V1::NodeAddress), nilable: true, key: "addresses"},
      allocatable:      {type: Hash(String, String), nilable: true, key: "allocatable"},
      capacity:         {type: Hash(String, String), nilable: true, key: "capacity"},
      conditions:       {type: Array(Kubernetes::Api::V1::NodeCondition), nilable: true, key: "conditions"},
      daemon_endpoints: {type: Kubernetes::Api::V1::NodeDaemonEndpoints, nilable: true, key: "daemonEndpoints"},
      images:           {type: Array(Kubernetes::Api::V1::ContainerImage), nilable: true, key: "images"},
      node_info:        {type: Kubernetes::Api::V1::NodeSystemInfo, nilable: true, key: "nodeInfo"},
      phase:            {type: String, nilable: true, key: "phase"},
      volumes_attached: {type: Array(Kubernetes::Api::V1::AttachedVolume), nilable: true, key: "volumesAttached"},
      volumes_in_use:   {type: Array(String), nilable: true, key: "volumesInUse"},
    }, true)

    JSON.mapping({
      addresses:        {type: Array(Kubernetes::Api::V1::NodeAddress), nilable: true, key: "addresses"},
      allocatable:      {type: Hash(String, String), nilable: true, key: "allocatable"},
      capacity:         {type: Hash(String, String), nilable: true, key: "capacity"},
      conditions:       {type: Array(Kubernetes::Api::V1::NodeCondition), nilable: true, key: "conditions"},
      daemon_endpoints: {type: Kubernetes::Api::V1::NodeDaemonEndpoints, nilable: true, key: "daemonEndpoints"},
      images:           {type: Array(Kubernetes::Api::V1::ContainerImage), nilable: true, key: "images"},
      node_info:        {type: Kubernetes::Api::V1::NodeSystemInfo, nilable: true, key: "nodeInfo"},
      phase:            {type: String, nilable: true, key: "phase"},
      volumes_attached: {type: Array(Kubernetes::Api::V1::AttachedVolume), nilable: true, key: "volumesAttached"},
      volumes_in_use:   {type: Array(String), nilable: true, key: "volumesInUse"},
    }, true)

    def initialize(*, @addresses : Array | Nil = nil, @allocatable : Hash(String, String) | Nil = nil, @capacity : Hash(String, String) | Nil = nil, @conditions : Array | Nil = nil, @daemon_endpoints : Kubernetes::Api::V1::NodeDaemonEndpoints | Nil = nil, @images : Array | Nil = nil, @node_info : Kubernetes::Api::V1::NodeSystemInfo | Nil = nil, @phase : String | Nil = nil, @volumes_attached : Array | Nil = nil, @volumes_in_use : Array | Nil = nil)
    end
  end
end
