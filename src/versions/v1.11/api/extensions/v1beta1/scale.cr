# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # represents a scaling request for a resource.
  class Api::Extensions::V1beta1::Scale
    getter api_version : String = "extensions/v1beta1"
    getter kind : String = "Scale"
    # Standard object metadata; More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata.](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata.)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # defines the behavior of the scale. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status.](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status.)
    property spec : Api::Extensions::V1beta1::ScaleSpec | Nil

    # current status of the scale. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status. Read-only.](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status. Read-only.)
    property status : Api::Extensions::V1beta1::ScaleStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "extensions/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Scale", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Extensions::V1beta1::ScaleSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Extensions::V1beta1::ScaleStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "extensions/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Scale", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Extensions::V1beta1::ScaleSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Extensions::V1beta1::ScaleStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Extensions::V1beta1::ScaleSpec | Nil = nil, @status : Api::Extensions::V1beta1::ScaleStatus | Nil = nil)
    end

    # read scale of the specified Deployment
    def self.read_extensions_v1beta1_deployment_scale(name : String, context : String | Nil = nil, namespace : String = "default")
    end

    # replace scale of the specified Deployment
    def replace_extensions_v1beta1_deployment_scale(context : String | Nil = nil)
    end

    # partially update scale of the specified Deployment
    def patch_extensions_v1beta1_deployment_scale(context : String | Nil = nil)
    end

    # read scale of the specified ReplicaSet
    def self.read_extensions_v1beta1_replica_set_scale(name : String, context : String | Nil = nil, namespace : String = "default")
    end

    # replace scale of the specified ReplicaSet
    def replace_extensions_v1beta1_replica_set_scale(context : String | Nil = nil)
    end

    # partially update scale of the specified ReplicaSet
    def patch_extensions_v1beta1_replica_set_scale(context : String | Nil = nil)
    end

    # read scale of the specified ReplicationControllerDummy
    def self.read_extensions_v1beta1_replication_controller_dummy_scale(name : String, context : String | Nil = nil, namespace : String = "default")
    end

    # replace scale of the specified ReplicationControllerDummy
    def replace_extensions_v1beta1_replication_controller_dummy_scale(context : String | Nil = nil)
    end

    # partially update scale of the specified ReplicationControllerDummy
    def patch_extensions_v1beta1_replication_controller_dummy_scale(context : String | Nil = nil)
    end
  end

  module Resources::Extensions::V1beta1
    alias Scale = ::Pyrite::Api::Extensions::V1beta1::Scale
  end
end
