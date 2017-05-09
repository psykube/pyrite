# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_4
  # Node is a worker node in Kubernetes. Each node will have a unique identifier in the cache (i.e. in etcd).
  class Definitions::V1::Node
    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : V1::ObjectMeta

    # Spec defines the behavior of a node. [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property spec : V1::NodeSpec

    # Most recently observed status of the node. Populated by the system. Read-only. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property status : V1::NodeStatus

    YAML.mapping({
      api_version: {type: String, default: "Node", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      metadata:    {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: V1::NodeSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: V1::NodeStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "Node", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      metadata:    {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: V1::NodeSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: V1::NodeStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : V1::ObjectMeta = nil, @spec : V1::NodeSpec = nil, @status : V1::NodeStatus = nil)
      @api_version = "v1"
      @kind = "Node"
    end
  end

  module Resources::V1
    include Resource
    alias Node = Definitions::V1::Node
  end
end
