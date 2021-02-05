# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # DeploymentStrategy describes how to replace existing pods with new ones.
  class Kubernetes::Apis::Extensions::V1beta1::DeploymentStrategy
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Rolling update config params. Present only if DeploymentStrategyType = RollingUpdate.
    @[JSON::Field(key: "rollingUpdate")]
    @[YAML::Field(key: "rollingUpdate")]
    property rolling_update : Kubernetes::Apis::Extensions::V1beta1::RollingUpdateDeployment | Nil

    # Type of deployment. Can be "Recreate" or "RollingUpdate". Default is RollingUpdate.
    @[JSON::Field(key: "type")]
    @[YAML::Field(key: "type")]
    property type : String | Nil

    def initialize(*, @rolling_update : Kubernetes::Apis::Extensions::V1beta1::RollingUpdateDeployment | Nil = nil, @type : String | Nil = nil)
    end
  end
end
