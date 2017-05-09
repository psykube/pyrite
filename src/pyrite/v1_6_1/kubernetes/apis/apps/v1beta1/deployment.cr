# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_1
  # Deployment enables declarative updates for Pods and ReplicaSets.
  class Definitions::Kubernetes::Apis::Apps::V1beta1::Deployment
    # Standard object metadata.
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta

    # Specification of the desired behavior of the Deployment.
    property spec : Kubernetes::Apis::Apps::V1beta1::DeploymentSpec

    # Most recently observed status of the Deployment.
    property status : Kubernetes::Apis::Apps::V1beta1::DeploymentStatus

    YAML.mapping({
      api_version: {type: String, default: "Deployment", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Apps::V1beta1::DeploymentSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: Kubernetes::Apis::Apps::V1beta1::DeploymentStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "Deployment", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Apps::V1beta1::DeploymentSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: Kubernetes::Apis::Apps::V1beta1::DeploymentStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta = nil, @spec : Kubernetes::Apis::Apps::V1beta1::DeploymentSpec = nil, @status : Kubernetes::Apis::Apps::V1beta1::DeploymentStatus = nil)
      @api_version = "apps/v1beta1"
      @kind = "Deployment"
    end
  end

  module Resources::Apps::V1beta1
    include Resource
    alias Deployment = Definitions::Kubernetes::Apis::Apps::V1beta1::Deployment
  end
end
