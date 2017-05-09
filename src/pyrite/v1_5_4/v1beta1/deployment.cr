# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_4
  # Deployment enables declarative updates for Pods and ReplicaSets.
  class Definitions::V1beta1::Deployment
    # Standard object metadata.
    property metadata : V1::ObjectMeta

    # Specification of the desired behavior of the Deployment.
    property spec : V1beta1::DeploymentSpec

    # Most recently observed status of the Deployment.
    property status : V1beta1::DeploymentStatus

    YAML.mapping({
      api_version: {type: String, default: "Deployment", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      metadata:    {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: V1beta1::DeploymentSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: V1beta1::DeploymentStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "Deployment", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      metadata:    {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: V1beta1::DeploymentSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: V1beta1::DeploymentStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : V1::ObjectMeta = nil, @spec : V1beta1::DeploymentSpec = nil, @status : V1beta1::DeploymentStatus = nil)
      @api_version = "v1beta1"
      @kind = "Deployment"
    end
  end

  module Resources::V1beta1
    include Resource
    alias Deployment = Definitions::V1beta1::Deployment
  end
end
