# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NodeStatus is information about the current status of a node.
  class Api::Core::V1::NodeStatus < Kubernetes::Spec
    # List of addresses reachable to the node. Queried from cloud provider, if available. More info: [https://kubernetes.io/docs/concepts/nodes/node/#addresses](https://kubernetes.io/docs/concepts/nodes/node/#addresses)
    @[::JSON::Field(key: "addresses")]
    @[::YAML::Field(key: "addresses")]
    property addresses : Array(Api::Core::V1::NodeAddress) | Nil

    # Allocatable represents the resources of a node that are available for scheduling. Defaults to Capacity.
    @[::JSON::Field(key: "allocatable")]
    @[::YAML::Field(key: "allocatable")]
    property allocatable : Hash(String, String) | Nil

    # Capacity represents the total resources of a node. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity](https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity)
    @[::JSON::Field(key: "capacity")]
    @[::YAML::Field(key: "capacity")]
    property capacity : Hash(String, String) | Nil

    # Conditions is an array of current observed node conditions. More info: [https://kubernetes.io/docs/concepts/nodes/node/#condition](https://kubernetes.io/docs/concepts/nodes/node/#condition)
    @[::JSON::Field(key: "conditions")]
    @[::YAML::Field(key: "conditions")]
    property conditions : Array(Api::Core::V1::NodeCondition) | Nil

    # Status of the config assigned to the node via the dynamic Kubelet config feature.
    @[::JSON::Field(key: "config")]
    @[::YAML::Field(key: "config")]
    property config : Api::Core::V1::NodeConfigStatus | Nil

    # Endpoints of daemons running on the Node.
    @[::JSON::Field(key: "daemonEndpoints")]
    @[::YAML::Field(key: "daemonEndpoints")]
    property daemon_endpoints : Api::Core::V1::NodeDaemonEndpoints | Nil

    # List of container images on this node
    @[::JSON::Field(key: "images")]
    @[::YAML::Field(key: "images")]
    property images : Array(Api::Core::V1::ContainerImage) | Nil

    # Set of [ids/uuids to uniquely identify the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#info](ids/uuids to uniquely identify the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#info)
    @[::JSON::Field(key: "nodeInfo")]
    @[::YAML::Field(key: "nodeInfo")]
    property node_info : Api::Core::V1::NodeSystemInfo | Nil

    # NodePhase is the recently observed lifecycle phase of the node. More info: [https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.](https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.)
    @[::JSON::Field(key: "phase")]
    @[::YAML::Field(key: "phase")]
    property phase : String | Nil

    # List of volumes that are attached to the node.
    @[::JSON::Field(key: "volumesAttached")]
    @[::YAML::Field(key: "volumesAttached")]
    property volumes_attached : Array(Api::Core::V1::AttachedVolume) | Nil

    # List of attachable volumes in use (mounted) by the node.
    @[::JSON::Field(key: "volumesInUse")]
    @[::YAML::Field(key: "volumesInUse")]
    property volumes_in_use : Array(String) | Nil

    def initialize(*, @addresses : Array | Nil = nil, @allocatable : Hash(String, String) | Nil = nil, @capacity : Hash(String, String) | Nil = nil, @conditions : Array | Nil = nil, @config : Api::Core::V1::NodeConfigStatus | Nil = nil, @daemon_endpoints : Api::Core::V1::NodeDaemonEndpoints | Nil = nil, @images : Array | Nil = nil, @node_info : Api::Core::V1::NodeSystemInfo | Nil = nil, @phase : String | Nil = nil, @volumes_attached : Array | Nil = nil, @volumes_in_use : Array | Nil = nil)
    end
  end
end
