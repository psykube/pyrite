# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NodeStatus is information about the current status of a node.
  class Kubernetes::Api::V1::NodeStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # List of addresses reachable to the node. Queried from cloud provider, if available. More info: [http://releases.k8s.io/HEAD/docs/admin/node.md#node-addresses](http://releases.k8s.io/HEAD/docs/admin/node.md#node-addresses)
    @[::JSON::Field(key: "addresses")]
    @[::YAML::Field(key: "addresses")]
    property addresses : Array(Kubernetes::Api::V1::NodeAddress) | Nil

    # Allocatable represents the resources of a node that are available for scheduling. Defaults to Capacity.
    @[::JSON::Field(key: "allocatable")]
    @[::YAML::Field(key: "allocatable")]
    property allocatable : Hash(String, String) | Nil

    # Capacity represents the total resources of a node. More info: [http://kubernetes.io/docs/user-guide/persistent-volumes#capacity for more details.](http://kubernetes.io/docs/user-guide/persistent-volumes#capacity for more details.)
    @[::JSON::Field(key: "capacity")]
    @[::YAML::Field(key: "capacity")]
    property capacity : Hash(String, String) | Nil

    # Conditions is an array of current observed node conditions. More info: [http://releases.k8s.io/HEAD/docs/admin/node.md#node-condition](http://releases.k8s.io/HEAD/docs/admin/node.md#node-condition)
    @[::JSON::Field(key: "conditions")]
    @[::YAML::Field(key: "conditions")]
    property conditions : Array(Kubernetes::Api::V1::NodeCondition) | Nil

    # Endpoints of daemons running on the Node.
    @[::JSON::Field(key: "daemonEndpoints")]
    @[::YAML::Field(key: "daemonEndpoints")]
    property daemon_endpoints : Kubernetes::Api::V1::NodeDaemonEndpoints | Nil

    # List of container images on this node
    @[::JSON::Field(key: "images")]
    @[::YAML::Field(key: "images")]
    property images : Array(Kubernetes::Api::V1::ContainerImage) | Nil

    # Set of [ids/uuids to uniquely identify the node. More info: http://releases.k8s.io/HEAD/docs/admin/node.md#node-info](ids/uuids to uniquely identify the node. More info: http://releases.k8s.io/HEAD/docs/admin/node.md#node-info)
    @[::JSON::Field(key: "nodeInfo")]
    @[::YAML::Field(key: "nodeInfo")]
    property node_info : Kubernetes::Api::V1::NodeSystemInfo | Nil

    # NodePhase is the recently observed lifecycle phase of the node. More info: [http://releases.k8s.io/HEAD/docs/admin/node.md#node-phase The field is never populated, and now is deprecated.](http://releases.k8s.io/HEAD/docs/admin/node.md#node-phase The field is never populated, and now is deprecated.)
    @[::JSON::Field(key: "phase")]
    @[::YAML::Field(key: "phase")]
    property phase : String | Nil

    # List of volumes that are attached to the node.
    @[::JSON::Field(key: "volumesAttached")]
    @[::YAML::Field(key: "volumesAttached")]
    property volumes_attached : Array(Kubernetes::Api::V1::AttachedVolume) | Nil

    # List of attachable volumes in use (mounted) by the node.
    @[::JSON::Field(key: "volumesInUse")]
    @[::YAML::Field(key: "volumesInUse")]
    property volumes_in_use : Array(String) | Nil

    def initialize(*, @addresses : Array | Nil = nil, @allocatable : Hash(String, String) | Nil = nil, @capacity : Hash(String, String) | Nil = nil, @conditions : Array | Nil = nil, @daemon_endpoints : Kubernetes::Api::V1::NodeDaemonEndpoints | Nil = nil, @images : Array | Nil = nil, @node_info : Kubernetes::Api::V1::NodeSystemInfo | Nil = nil, @phase : String | Nil = nil, @volumes_attached : Array | Nil = nil, @volumes_in_use : Array | Nil = nil)
    end
  end
end
