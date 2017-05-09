# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_0
  # NodeStatus is information about the current status of a node.
  class Definitions::V1::NodeStatus
    # List of addresses reachable to the node. Queried from cloud provider, if available. More info: [http://releases.k8s.io/HEAD/docs/admin/node.md#node-addresses](http://releases.k8s.io/HEAD/docs/admin/node.md#node-addresses)
    property addresses : Array(V1::NodeAddress)?

    # Allocatable represents the resources of a node that are available for scheduling. Defaults to Capacity.
    property allocatable : Hash(String, String)?

    # Capacity represents the total resources of a node. More info: [http://kubernetes.io/docs/user-guide/persistent-volumes#capacity for more details.](http://kubernetes.io/docs/user-guide/persistent-volumes#capacity for more details.)
    property capacity : Hash(String, String)?

    # Conditions is an array of current observed node conditions. More info: [http://releases.k8s.io/HEAD/docs/admin/node.md#node-condition](http://releases.k8s.io/HEAD/docs/admin/node.md#node-condition)
    property conditions : Array(V1::NodeCondition)?

    # Endpoints of daemons running on the Node.
    property daemon_endpoints : V1::NodeDaemonEndpoints

    # List of container images on this node
    property images : Array(V1::ContainerImage)?

    # Set of [ids/uuids to uniquely identify the node. More info: http://releases.k8s.io/HEAD/docs/admin/node.md#node-info](ids/uuids to uniquely identify the node. More info: http://releases.k8s.io/HEAD/docs/admin/node.md#node-info)
    property node_info : V1::NodeSystemInfo

    # NodePhase is the recently observed lifecycle phase of the node. More info: [http://releases.k8s.io/HEAD/docs/admin/node.md#node-phase The field is never populated, and now is deprecated.](http://releases.k8s.io/HEAD/docs/admin/node.md#node-phase The field is never populated, and now is deprecated.)
    property phase : String?

    # List of volumes that are attached to the node.
    property volumes_attached : Array(V1::AttachedVolume)?

    # List of attachable volumes in use (mounted) by the node.
    property volumes_in_use : Array(String)?

    YAML.mapping({addresses:        {type: Array(V1::NodeAddress), nilable: true, key: addresses, getter: false, setter: false},
                  allocatable:      {type: Hash(String, String), nilable: true, key: allocatable, getter: false, setter: false},
                  capacity:         {type: Hash(String, String), nilable: true, key: capacity, getter: false, setter: false},
                  conditions:       {type: Array(V1::NodeCondition), nilable: true, key: conditions, getter: false, setter: false},
                  daemon_endpoints: {type: V1::NodeDaemonEndpoints, nilable: true, key: daemonEndpoints, getter: false, setter: false},
                  images:           {type: Array(V1::ContainerImage), nilable: true, key: images, getter: false, setter: false},
                  node_info:        {type: V1::NodeSystemInfo, nilable: true, key: nodeInfo, getter: false, setter: false},
                  phase:            {type: String, nilable: true, key: phase, getter: false, setter: false},
                  volumes_attached: {type: Array(V1::AttachedVolume), nilable: true, key: volumesAttached, getter: false, setter: false},
                  volumes_in_use:   {type: Array(String), nilable: true, key: volumesInUse, getter: false, setter: false}}, true)

    JSON.mapping({addresses:        {type: Array(V1::NodeAddress), nilable: true, key: addresses, getter: false, setter: false},
                  allocatable:      {type: Hash(String, String), nilable: true, key: allocatable, getter: false, setter: false},
                  capacity:         {type: Hash(String, String), nilable: true, key: capacity, getter: false, setter: false},
                  conditions:       {type: Array(V1::NodeCondition), nilable: true, key: conditions, getter: false, setter: false},
                  daemon_endpoints: {type: V1::NodeDaemonEndpoints, nilable: true, key: daemonEndpoints, getter: false, setter: false},
                  images:           {type: Array(V1::ContainerImage), nilable: true, key: images, getter: false, setter: false},
                  node_info:        {type: V1::NodeSystemInfo, nilable: true, key: nodeInfo, getter: false, setter: false},
                  phase:            {type: String, nilable: true, key: phase, getter: false, setter: false},
                  volumes_attached: {type: Array(V1::AttachedVolume), nilable: true, key: volumesAttached, getter: false, setter: false},
                  volumes_in_use:   {type: Array(String), nilable: true, key: volumesInUse, getter: false, setter: false}}, true)

    def initialize(@addresses : Array? = nil, @allocatable : Hash(String, String)? = nil, @capacity : Hash(String, String)? = nil, @conditions : Array? = nil, @daemon_endpoints : V1::NodeDaemonEndpoints = nil, @images : Array? = nil, @node_info : V1::NodeSystemInfo = nil, @phase : String? = nil, @volumes_attached : Array? = nil, @volumes_in_use : Array? = nil)
    end
  end
end
