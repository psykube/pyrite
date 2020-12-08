# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Deployment enables declarative updates for Pods and ReplicaSets.
  class Api::Apps::V1beta2::Deployment
    getter api_version : String = "apps/v1beta2"
    getter kind : String = "Deployment"
    # Standard object metadata.
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Specification of the desired behavior of the Deployment.
    property spec : Api::Apps::V1beta2::DeploymentSpec | Nil

    # Most recently observed status of the Deployment.
    property status : Api::Apps::V1beta2::DeploymentStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "apps/v1beta2", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Deployment", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Apps::V1beta2::DeploymentSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Apps::V1beta2::DeploymentStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "apps/v1beta2", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Deployment", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Apps::V1beta2::DeploymentSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Apps::V1beta2::DeploymentStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Apps::V1beta2::DeploymentSpec | Nil = nil, @status : Api::Apps::V1beta2::DeploymentStatus | Nil = nil)
    end

    # create a Deployment
    def create(context : String | Nil = nil)
    end

    # list or watch objects of kind Deployment
    def self.list(context : String | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, include_uninitialized : Bool | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # delete collection of Deployment
    def self.delete(context : String | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, include_uninitialized : Bool | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # read the specified Deployment
    def self.read(name : String, context : String | Nil = nil, exact : Bool | Nil = nil, export : Bool | Nil = nil, namespace : String = "default")
    end

    # replace the specified Deployment
    def replace(context : String | Nil = nil)
    end

    # partially update the specified Deployment
    def patch(context : String | Nil = nil)
    end

    # delete a Deployment
    def delete(api_version : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, kind : String | Nil = nil, orphan_dependents : Bool | Nil = nil, preconditions : Apimachinery::Apis::Meta::V1::Preconditions | Nil = nil, propagation_policy : String | Nil = nil, context : String | Nil = nil)
    end

    # read status of the specified Deployment
    def self.read_status(name : String, context : String | Nil = nil, namespace : String = "default")
    end

    # replace status of the specified Deployment
    def replace_status(context : String | Nil = nil)
    end

    # partially update status of the specified Deployment
    def patch_status(context : String | Nil = nil)
    end
  end

  module Resources::Apps::V1beta2
    alias Deployment = ::Pyrite::Api::Apps::V1beta2::Deployment
  end
end
