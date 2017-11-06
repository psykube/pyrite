# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Deployment enables declarative updates for Pods and ReplicaSets.
  class Api::Apps::V1beta2::Deployment
    getter api_version : String = "io/k8s/api/apps/v1beta2"
    getter kind : String = "Deployment"
    # Standard object metadata.
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Specification of the desired behavior of the Deployment.
    property spec : Api::Apps::V1beta2::DeploymentSpec | Nil

    # Most recently observed status of the Deployment.
    property status : Api::Apps::V1beta2::DeploymentStatus | Nil

    YAML.mapping({
      api_version: {type: String, default: "io/k8s/api/apps/v1beta2", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Deployment", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Apps::V1beta2::DeploymentSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Apps::V1beta2::DeploymentStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "io/k8s/api/apps/v1beta2", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Deployment", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Apps::V1beta2::DeploymentSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Apps::V1beta2::DeploymentStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Apps::V1beta2::DeploymentSpec | Nil = nil, @status : Api::Apps::V1beta2::DeploymentStatus | Nil = nil)
    end
  end

  module Resources::Io::K8s::Api::Apps::V1beta2
    alias Deployment = ::Pyrite::Api::Apps::V1beta2::Deployment
  end
end
