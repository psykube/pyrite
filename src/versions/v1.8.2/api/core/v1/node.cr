# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Node is a worker node in Kubernetes. Each node will have a unique identifier in the cache (i.e. in etcd).
  class Api::Core::V1::Node
    getter api_version : String = "io/k8s/api/core/v1"
    getter kind : String = "Node"
    # Standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec defines the behavior of a node. [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    property spec : Api::Core::V1::NodeSpec | Nil

    # Most recently observed status of the node. Populated by the system. Read-only. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    property status : Api::Core::V1::NodeStatus | Nil

    YAML.mapping({
      api_version: {type: String, default: "io/k8s/api/core/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Node", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Core::V1::NodeSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Core::V1::NodeStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "io/k8s/api/core/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Node", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Core::V1::NodeSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Core::V1::NodeStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Core::V1::NodeSpec | Nil = nil, @status : Api::Core::V1::NodeStatus | Nil = nil)
    end
  end

  module Resources::Io::K8s::Api::Core::V1
    alias Node = Api::Core::V1::Node
  end
end
