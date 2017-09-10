# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # DeploymentStrategy describes how to replace existing pods with new ones.
  class Kubernetes::Apis::Extensions::V1beta1::DeploymentStrategy
    # Rolling update config params. Present only if DeploymentStrategyType = RollingUpdate.
    property rolling_update : Kubernetes::Apis::Extensions::V1beta1::RollingUpdateDeployment | Nil

    # Type of deployment. Can be "Recreate" or "RollingUpdate". Default is RollingUpdate.
    property type : String | Nil

    YAML.mapping({
      rolling_update: {type: Kubernetes::Apis::Extensions::V1beta1::RollingUpdateDeployment, nilable: true, key: "rollingUpdate"},
      type:           {type: String, nilable: true, key: "type"},
    }, true)

    JSON.mapping({
      rolling_update: {type: Kubernetes::Apis::Extensions::V1beta1::RollingUpdateDeployment, nilable: true, key: "rollingUpdate"},
      type:           {type: String, nilable: true, key: "type"},
    }, true)

    def initialize(*, @rolling_update : Kubernetes::Apis::Extensions::V1beta1::RollingUpdateDeployment | Nil = nil, @type : String | Nil = nil)
    end
  end
end
