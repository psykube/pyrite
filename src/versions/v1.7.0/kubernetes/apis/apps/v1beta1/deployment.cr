# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Deployment enables declarative updates for Pods and ReplicaSets.
  class Kubernetes::Apis::Apps::V1beta1::Deployment
    getter api_version : String = "apps/v1beta1"
    getter kind : String = "Deployment"
    # Standard object metadata.
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Specification of the desired behavior of the Deployment.
    property spec : Kubernetes::Apis::Apps::V1beta1::DeploymentSpec | Nil

    # Most recently observed status of the Deployment.
    property status : Kubernetes::Apis::Apps::V1beta1::DeploymentStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "apps/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Deployment", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Apps::V1beta1::DeploymentSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Kubernetes::Apis::Apps::V1beta1::DeploymentStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "apps/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Deployment", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Apps::V1beta1::DeploymentSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Kubernetes::Apis::Apps::V1beta1::DeploymentStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Apis::Apps::V1beta1::DeploymentSpec | Nil = nil, @status : Kubernetes::Apis::Apps::V1beta1::DeploymentStatus | Nil = nil)
    end
  end

  module Resources::Apps::V1beta1
    alias Deployment = ::Pyrite::Kubernetes::Apis::Apps::V1beta1::Deployment
  end
end
