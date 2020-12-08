# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Scale represents a scaling request for a resource.
  class Api::Autoscaling::V1::Scale
    getter api_version : String = "autoscaling/v1"
    getter kind : String = "Scale"
    # Standard object metadata; More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata.](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata.)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # defines the behavior of the scale. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status.](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status.)
    property spec : Api::Autoscaling::V1::ScaleSpec | Nil

    # current status of the scale. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status. Read-only.](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status. Read-only.)
    property status : Api::Autoscaling::V1::ScaleStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "autoscaling/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Scale", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Autoscaling::V1::ScaleSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Autoscaling::V1::ScaleStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "autoscaling/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Scale", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Autoscaling::V1::ScaleSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Autoscaling::V1::ScaleStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Autoscaling::V1::ScaleSpec | Nil = nil, @status : Api::Autoscaling::V1::ScaleStatus | Nil = nil)
    end

    # read scale of the specified ReplicationController
    def self.read_core_v1_replication_controller_scale(name : String, context : String | Nil = nil, namespace : String = "default")
    end

    # replace scale of the specified ReplicationController
    def replace_core_v1_replication_controller_scale(context : String | Nil = nil, dry_run : String | Nil = nil)
    end

    # partially update scale of the specified ReplicationController
    def patch_core_v1_replication_controller_scale(context : String | Nil = nil, dry_run : String | Nil = nil)
    end

    # read scale of the specified Deployment
    def self.read_apps_v1_deployment_scale(name : String, context : String | Nil = nil, namespace : String = "default")
    end

    # replace scale of the specified Deployment
    def replace_apps_v1_deployment_scale(context : String | Nil = nil, dry_run : String | Nil = nil)
    end

    # partially update scale of the specified Deployment
    def patch_apps_v1_deployment_scale(context : String | Nil = nil, dry_run : String | Nil = nil)
    end

    # read scale of the specified ReplicaSet
    def self.read_apps_v1_replica_set_scale(name : String, context : String | Nil = nil, namespace : String = "default")
    end

    # replace scale of the specified ReplicaSet
    def replace_apps_v1_replica_set_scale(context : String | Nil = nil, dry_run : String | Nil = nil)
    end

    # partially update scale of the specified ReplicaSet
    def patch_apps_v1_replica_set_scale(context : String | Nil = nil, dry_run : String | Nil = nil)
    end

    # read scale of the specified StatefulSet
    def self.read_apps_v1_stateful_set_scale(name : String, context : String | Nil = nil, namespace : String = "default")
    end

    # replace scale of the specified StatefulSet
    def replace_apps_v1_stateful_set_scale(context : String | Nil = nil, dry_run : String | Nil = nil)
    end

    # partially update scale of the specified StatefulSet
    def patch_apps_v1_stateful_set_scale(context : String | Nil = nil, dry_run : String | Nil = nil)
    end
  end

  module Resources::Autoscaling::V1
    alias Scale = ::Pyrite::Api::Autoscaling::V1::Scale
  end
end
