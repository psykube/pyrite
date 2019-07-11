# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CSINodeDriver holds information about the specification of one CSI driver installed on a node
  class Api::Storage::V1beta1::CSINodeDriver
    # This is the name of the CSI driver that this object refers to. This MUST be the same name returned by the CSI GetPluginName() call for that driver.
    property name : String

    # nodeID of the node from the driver point of view. This field enables Kubernetes to communicate with storage systems that do not share the same nomenclature for nodes. For example, Kubernetes may refer to a given node as "node1", but the storage system may refer to the same node as "nodeA". When Kubernetes issues a command to the storage system to attach a volume to a specific node, it can use this field to refer to the node name using the ID that the storage system will understand, e.g. "nodeA" instead of "node1". This field is required.
    property node_id : String

    # topologyKeys is the list of keys supported by the driver. When a driver is initialized on a cluster, it provides a set of topology keys that it understands (e.g. ["company.com/zone", "company.com/region"). When a driver is initialized on a node, it provides the same topology keys along with values. Kubelet will expose these topology keys as labels on its own node object. When Kubernetes does topology aware provisioning, it can use this list to determine which labels it should retrieve from the node object and pass back to the driver. It is possible for different nodes to use different topology keys. This can be empty if driver does not support topology.]("company.com/zone", "company.com/region"). When a driver is initialized on a node, it provides the same topology keys along with values. Kubelet will expose these topology keys as labels on its own node object. When Kubernetes does topology aware provisioning, it can use this list to determine which labels it should retrieve from the node object and pass back to the driver. It is possible for different nodes to use different topology keys. This can be empty if driver does not support topology.)
    property topology_keys : Array(String) | Nil

    ::YAML.mapping({
      name:          {type: String, nilable: false, key: "name", getter: false, setter: false},
      node_id:       {type: String, nilable: false, key: "nodeID", getter: false, setter: false},
      topology_keys: {type: Array(String), nilable: true, key: "topologyKeys", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      name:          {type: String, nilable: false, key: "name", getter: false, setter: false},
      node_id:       {type: String, nilable: false, key: "nodeID", getter: false, setter: false},
      topology_keys: {type: Array(String), nilable: true, key: "topologyKeys", getter: false, setter: false},
    }, true)

    def initialize(*, @name : String, @node_id : String, @topology_keys : Array | Nil = nil)
    end
  end
end
