# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Role is a namespaced, logical grouping of PolicyRules that can be referenced as a unit by a RoleBinding.
  class Api::Rbac::V1alpha1::Role
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String = "rbac.authorization.k8s.io/v1alpha1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "Role"
    # Standard object's metadata.
    @[::JSON::Field(key: "metadata")]
    @[::YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Rules holds all the PolicyRules for this Role
    @[::JSON::Field(key: "rules")]
    @[::YAML::Field(key: "rules")]
    property rules : Array(Api::Rbac::V1alpha1::PolicyRule)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @rules : Array)
    end
  end

  module Resources::Rbac::V1alpha1
    alias Role = ::Pyrite::Api::Rbac::V1alpha1::Role
  end
end
