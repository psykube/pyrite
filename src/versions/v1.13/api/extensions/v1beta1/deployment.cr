# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # DEPRECATED - This group version of Deployment is deprecated by [apps/v1beta2/Deployment. See the release notes for more information. Deployment enables declarative updates for Pods and ReplicaSets.](apps/v1beta2/Deployment. See the release notes for more information. Deployment enables declarative updates for Pods and ReplicaSets.)
  class Api::Extensions::V1beta1::Deployment
    getter api_version : String = "extensions/v1beta1"
    getter kind : String = "Deployment"
    # Standard object metadata.
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Specification of the desired behavior of the Deployment.
    property spec : Api::Extensions::V1beta1::DeploymentSpec | Nil

    # Most recently observed status of the Deployment.
    property status : Api::Extensions::V1beta1::DeploymentStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "extensions/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Deployment", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Extensions::V1beta1::DeploymentSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Extensions::V1beta1::DeploymentStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "extensions/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Deployment", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Extensions::V1beta1::DeploymentSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Extensions::V1beta1::DeploymentStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Extensions::V1beta1::DeploymentSpec | Nil = nil, @status : Api::Extensions::V1beta1::DeploymentStatus | Nil = nil)
    end

    # create a Deployment
    def create(context : String | Nil = nil, include_uninitialized : Bool | Nil = nil, dry_run : String | Nil = nil)
    end

    # list or watch objects of kind Deployment
    def self.list(context : String | Nil = nil, include_uninitialized : Bool | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # delete collection of Deployment
    def self.delete(context : String | Nil = nil, include_uninitialized : Bool | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # read the specified Deployment
    def self.read(name : String, context : String | Nil = nil, exact : Bool | Nil = nil, export : Bool | Nil = nil, namespace : String = "default")
    end

    # replace the specified Deployment
    def replace(context : String | Nil = nil, dry_run : String | Nil = nil)
    end

    # partially update the specified Deployment
    def patch(context : String | Nil = nil, dry_run : String | Nil = nil)
    end

    # delete a Deployment
    def delete(context : String | Nil = nil, dry_run : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, orphan_dependents : Bool | Nil = nil, propagation_policy : String | Nil = nil)
    end

    # read status of the specified Deployment
    def self.read_status(name : String, context : String | Nil = nil, namespace : String = "default")
    end

    # replace status of the specified Deployment
    def replace_status(context : String | Nil = nil, dry_run : String | Nil = nil)
    end

    # partially update status of the specified Deployment
    def patch_status(context : String | Nil = nil, dry_run : String | Nil = nil)
    end
  end

  module Resources::Extensions::V1beta1
    alias Deployment = ::Pyrite::Api::Extensions::V1beta1::Deployment
  end
end
