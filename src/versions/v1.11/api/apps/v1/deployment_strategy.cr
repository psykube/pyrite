# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # DeploymentStrategy describes how to replace existing pods with new ones.
  class Api::Apps::V1::DeploymentStrategy
    # Rolling update config params. Present only if DeploymentStrategyType = RollingUpdate.
    property rolling_update : Api::Apps::V1::RollingUpdateDeployment | Nil

    # Type of deployment. Can be "Recreate" or "RollingUpdate". Default is RollingUpdate.
    property type : String | Nil

    ::YAML.mapping({
      rolling_update: {type: Api::Apps::V1::RollingUpdateDeployment, nilable: true, key: "rollingUpdate", getter: false, setter: false},
      type:           {type: String, nilable: true, key: "type", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      rolling_update: {type: Api::Apps::V1::RollingUpdateDeployment, nilable: true, key: "rollingUpdate", getter: false, setter: false},
      type:           {type: String, nilable: true, key: "type", getter: false, setter: false},
    }, true)

    def initialize(*, @rolling_update : Api::Apps::V1::RollingUpdateDeployment | Nil = nil, @type : String | Nil = nil)
    end
  end
end
