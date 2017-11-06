# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NodeStatus is information about the current status of a node.
  class Api::Core::V1::NodeStatus
    # List of addresses reachable to the node. Queried from cloud provider, if available. More info: [https://kubernetes.io/docs/concepts/nodes/node/#addresses](https://kubernetes.io/docs/concepts/nodes/node/#addresses)
    property addresses : Array(Api::Core::V1::NodeAddress) | Nil

    # Allocatable represents the resources of a node that are available for scheduling. Defaults to Capacity.
    property allocatable : Hash(String, String) | Nil

    # Capacity represents the total resources of a node. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity](https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity)
    property capacity : Hash(String, String) | Nil

    # Conditions is an array of current observed node conditions. More info: [https://kubernetes.io/docs/concepts/nodes/node/#condition](https://kubernetes.io/docs/concepts/nodes/node/#condition)
    property conditions : Array(Api::Core::V1::NodeCondition) | Nil

    # Endpoints of daemons running on the Node.
    property daemon_endpoints : Api::Core::V1::NodeDaemonEndpoints | Nil

    # List of container images on this node
    property images : Array(Api::Core::V1::ContainerImage) | Nil

    # Set of [ids/uuids to uniquely identify the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#info](ids/uuids to uniquely identify the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#info)
    property node_info : Api::Core::V1::NodeSystemInfo | Nil

    # NodePhase is the recently observed lifecycle phase of the node. More info: [https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.](https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.)
    property phase : String | Nil

    # List of volumes that are attached to the node.
    property volumes_attached : Array(Api::Core::V1::AttachedVolume) | Nil

    # List of attachable volumes in use (mounted) by the node.
    property volumes_in_use : Array(String) | Nil

    YAML.mapping({
      addresses:        {type: Array(Api::Core::V1::NodeAddress), nilable: true, key: "addresses", getter: false, setter: false},
      allocatable:      {type: Hash(String, String), nilable: true, key: "allocatable", getter: false, setter: false},
      capacity:         {type: Hash(String, String), nilable: true, key: "capacity", getter: false, setter: false},
      conditions:       {type: Array(Api::Core::V1::NodeCondition), nilable: true, key: "conditions", getter: false, setter: false},
      daemon_endpoints: {type: Api::Core::V1::NodeDaemonEndpoints, nilable: true, key: "daemonEndpoints", getter: false, setter: false},
      images:           {type: Array(Api::Core::V1::ContainerImage), nilable: true, key: "images", getter: false, setter: false},
      node_info:        {type: Api::Core::V1::NodeSystemInfo, nilable: true, key: "nodeInfo", getter: false, setter: false},
      phase:            {type: String, nilable: true, key: "phase", getter: false, setter: false},
      volumes_attached: {type: Array(Api::Core::V1::AttachedVolume), nilable: true, key: "volumesAttached", getter: false, setter: false},
      volumes_in_use:   {type: Array(String), nilable: true, key: "volumesInUse", getter: false, setter: false},
    }, true)

    JSON.mapping({
      addresses:        {type: Array(Api::Core::V1::NodeAddress), nilable: true, key: "addresses", getter: false, setter: false},
      allocatable:      {type: Hash(String, String), nilable: true, key: "allocatable", getter: false, setter: false},
      capacity:         {type: Hash(String, String), nilable: true, key: "capacity", getter: false, setter: false},
      conditions:       {type: Array(Api::Core::V1::NodeCondition), nilable: true, key: "conditions", getter: false, setter: false},
      daemon_endpoints: {type: Api::Core::V1::NodeDaemonEndpoints, nilable: true, key: "daemonEndpoints", getter: false, setter: false},
      images:           {type: Array(Api::Core::V1::ContainerImage), nilable: true, key: "images", getter: false, setter: false},
      node_info:        {type: Api::Core::V1::NodeSystemInfo, nilable: true, key: "nodeInfo", getter: false, setter: false},
      phase:            {type: String, nilable: true, key: "phase", getter: false, setter: false},
      volumes_attached: {type: Array(Api::Core::V1::AttachedVolume), nilable: true, key: "volumesAttached", getter: false, setter: false},
      volumes_in_use:   {type: Array(String), nilable: true, key: "volumesInUse", getter: false, setter: false},
    }, true)

    def initialize(*, @addresses : Array | Nil = nil, @allocatable : Hash(String, String) | Nil = nil, @capacity : Hash(String, String) | Nil = nil, @conditions : Array | Nil = nil, @daemon_endpoints : Api::Core::V1::NodeDaemonEndpoints | Nil = nil, @images : Array | Nil = nil, @node_info : Api::Core::V1::NodeSystemInfo | Nil = nil, @phase : String | Nil = nil, @volumes_attached : Array | Nil = nil, @volumes_in_use : Array | Nil = nil)
    end
  end
end
