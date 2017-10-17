# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ReplicationControllerList is a collection of replication controllers.
  class Api::Core::V1::ReplicationControllerList
    getter api_version : String = "io/k8s/api/core/v1"
    getter kind : String = "List"
    # List of replication controllers. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller)
    property items : Array(Api::Core::V1::ReplicationController)

    # Standard list metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds)
    property metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil

    YAML.mapping({
      api_version: {type: String, default: "io/k8s/api/core/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "List", key: "kind", setter: false},
      items:       {type: Array(Api::Core::V1::ReplicationController), nilable: false, key: "items", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "io/k8s/api/core/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "List", key: "kind", setter: false},
      items:       {type: Array(Api::Core::V1::ReplicationController), nilable: false, key: "items", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    def initialize(*, @items : Array | Nil = nil, @metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil = nil)
    end
  end
end
