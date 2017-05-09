# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_1
  # DeploymentStrategy describes how to replace existing pods with new ones.
  class Definitions::Kubernetes::Apis::Apps::V1beta1::DeploymentStrategy
    # Rolling update config params. Present only if DeploymentStrategyType = RollingUpdate.
    property rolling_update : Kubernetes::Apis::Apps::V1beta1::RollingUpdateDeployment

    # Type of deployment. Can be "Recreate" or "RollingUpdate". Default is RollingUpdate.
    property type : String?

    YAML.mapping({rolling_update: {type: Kubernetes::Apis::Apps::V1beta1::RollingUpdateDeployment, nilable: true, key: rollingUpdate, getter: false, setter: false},
                  type:           {type: String, nilable: true, key: type, getter: false, setter: false}}, true)

    JSON.mapping({rolling_update: {type: Kubernetes::Apis::Apps::V1beta1::RollingUpdateDeployment, nilable: true, key: rollingUpdate, getter: false, setter: false},
                  type:           {type: String, nilable: true, key: type, getter: false, setter: false}}, true)

    def initialize(@rolling_update : Kubernetes::Apis::Apps::V1beta1::RollingUpdateDeployment = nil, @type : String? = nil)
    end
  end
end
