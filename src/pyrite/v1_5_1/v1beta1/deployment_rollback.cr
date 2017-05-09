# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_1
  # DeploymentRollback stores the information required to rollback a deployment.
  class Definitions::V1beta1::DeploymentRollback
    # Required: This must match the Name of a deployment.
    property name : String

    # The config of this deployment rollback.
    property rollback_to : V1beta1::RollbackConfig

    # The annotations to be updated to a deployment
    property updated_annotations : Hash(String, String)?

    YAML.mapping({name:                {type: String, nilable: false, key: name, getter: false, setter: false},
                  rollback_to:         {type: V1beta1::RollbackConfig, nilable: false, key: rollbackTo, getter: false, setter: false},
                  updated_annotations: {type: Hash(String, String), nilable: true, key: updatedAnnotations, getter: false, setter: false}}, true)

    JSON.mapping({name:                {type: String, nilable: false, key: name, getter: false, setter: false},
                  rollback_to:         {type: V1beta1::RollbackConfig, nilable: false, key: rollbackTo, getter: false, setter: false},
                  updated_annotations: {type: Hash(String, String), nilable: true, key: updatedAnnotations, getter: false, setter: false}}, true)

    def initialize(@name : String? = nil, @rollback_to : V1beta1::RollbackConfig = nil, @updated_annotations : Hash(String, String)? = nil)
    end
  end
end
