# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_2
  # DeploymentRollback stores the information required to rollback a deployment.
  class Definitions::Kubernetes::Apis::Extensions::V1beta1::DeploymentRollback
    # Required: This must match the Name of a deployment.
    property name : String

    # The config of this deployment rollback.
    property rollback_to : Kubernetes::Apis::Extensions::V1beta1::RollbackConfig

    # The annotations to be updated to a deployment
    property updated_annotations : Hash(String, String)?

    YAML.mapping({
      api_version:         {type: String, default: "DeploymentRollback", key: apiVersion, getter: false, setter: false},
      kind:                {type: String, default: "v1beta1", getter: false, setter: false},
      name:                {type: String, nilable: false, key: name, getter: false, setter: false},
      rollback_to:         {type: Kubernetes::Apis::Extensions::V1beta1::RollbackConfig, nilable: false, key: rollbackTo, getter: false, setter: false},
      updated_annotations: {type: Hash(String, String), nilable: true, key: updatedAnnotations, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version:         {type: String, default: "DeploymentRollback", key: apiVersion, getter: false, setter: false},
      kind:                {type: String, default: "v1beta1", getter: false, setter: false},
      name:                {type: String, nilable: false, key: name, getter: false, setter: false},
      rollback_to:         {type: Kubernetes::Apis::Extensions::V1beta1::RollbackConfig, nilable: false, key: rollbackTo, getter: false, setter: false},
      updated_annotations: {type: Hash(String, String), nilable: true, key: updatedAnnotations, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @kind : String? = nil, @name : String? = nil, @rollback_to : Kubernetes::Apis::Extensions::V1beta1::RollbackConfig = nil, @updated_annotations : Hash(String, String)? = nil)
      @api_version = "extensions/v1beta1"
      @kind = "DeploymentRollback"
    end
  end

  module Resources::Extensions::V1beta1
    include Resource
    alias DeploymentRollback = Definitions::Kubernetes::Apis::Extensions::V1beta1::DeploymentRollback
  end
end
