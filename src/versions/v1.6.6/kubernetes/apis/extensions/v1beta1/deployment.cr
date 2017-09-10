# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Deployment enables declarative updates for Pods and ReplicaSets.
  class Kubernetes::Apis::Extensions::V1beta1::Deployment
    getter api_version : String = "extensions/v1beta1"
    getter kind : String = "Deployment"
    # Standard object metadata.
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Specification of the desired behavior of the Deployment.
    property spec : Kubernetes::Apis::Extensions::V1beta1::DeploymentSpec | Nil

    # Most recently observed status of the Deployment.
    property status : Kubernetes::Apis::Extensions::V1beta1::DeploymentStatus | Nil

    YAML.mapping({
      api_version: {type: String, default: "extensions/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Deployment", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata"},
      spec:        {type: Kubernetes::Apis::Extensions::V1beta1::DeploymentSpec, nilable: true, key: "spec"},
      status:      {type: Kubernetes::Apis::Extensions::V1beta1::DeploymentStatus, nilable: true, key: "status"},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "extensions/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Deployment", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata"},
      spec:        {type: Kubernetes::Apis::Extensions::V1beta1::DeploymentSpec, nilable: true, key: "spec"},
      status:      {type: Kubernetes::Apis::Extensions::V1beta1::DeploymentStatus, nilable: true, key: "status"},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Apis::Extensions::V1beta1::DeploymentSpec | Nil = nil, @status : Kubernetes::Apis::Extensions::V1beta1::DeploymentStatus | Nil = nil)
    end
  end

  module Resources::Extensions::V1beta1
    alias Deployment = Kubernetes::Apis::Extensions::V1beta1::Deployment
  end
end
