# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ClusterRole is a cluster level, logical grouping of PolicyRules that can be referenced as a unit by a RoleBinding or ClusterRoleBinding.
  class Kubernetes::Apis::Rbac::V1alpha1::ClusterRole
    getter api_version : String = "rbac/v1alpha1"
    getter kind : String = "ClusterRole"
    # Standard object's metadata.
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Rules holds all the PolicyRules for this ClusterRole
    property rules : Array(Kubernetes::Apis::Rbac::V1alpha1::PolicyRule)

    YAML.mapping({
      api_version: {type: String, default: "rbac/v1alpha1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "ClusterRole", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      rules:       {type: Array(Kubernetes::Apis::Rbac::V1alpha1::PolicyRule), nilable: false, key: "rules", getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "rbac/v1alpha1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "ClusterRole", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      rules:       {type: Array(Kubernetes::Apis::Rbac::V1alpha1::PolicyRule), nilable: false, key: "rules", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @rules : Array | Nil = nil)
    end
  end

  module Resources::Rbac::V1alpha1
    alias ClusterRole = Kubernetes::Apis::Rbac::V1alpha1::ClusterRole
  end
end
