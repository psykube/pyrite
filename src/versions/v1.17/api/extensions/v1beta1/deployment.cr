# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # DEPRECATED - This group version of Deployment is deprecated by [apps/v1beta2/Deployment. See the release notes for more information. Deployment enables declarative updates for Pods and ReplicaSets.](apps/v1beta2/Deployment. See the release notes for more information. Deployment enables declarative updates for Pods and ReplicaSets.)
  class Api::Extensions::V1beta1::Deployment
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[JSON::Field(key: "apiVersion")]
    @[YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String = "extensions/v1beta1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "Deployment"
    # Standard object metadata.
    @[JSON::Field(key: "metadata")]
    @[YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Specification of the desired behavior of the Deployment.
    @[JSON::Field(key: "spec")]
    @[YAML::Field(key: "spec")]
    property spec : Api::Extensions::V1beta1::DeploymentSpec | Nil

    # Most recently observed status of the Deployment.
    @[JSON::Field(key: "status")]
    @[YAML::Field(key: "status")]
    property status : Api::Extensions::V1beta1::DeploymentStatus | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Extensions::V1beta1::DeploymentSpec | Nil = nil, @status : Api::Extensions::V1beta1::DeploymentStatus | Nil = nil)
    end
  end

  module Resources::Extensions::V1beta1
    alias Deployment = ::Pyrite::Api::Extensions::V1beta1::Deployment
  end
end
