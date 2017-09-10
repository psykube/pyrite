# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Role is a namespaced, logical grouping of PolicyRules that can be referenced as a unit by a RoleBinding.
  class Kubernetes::Apis::Rbac::V1alpha1::Role
    getter api_version : String = "rbac/v1alpha1"
    getter kind : String = "Role"
    # Standard object's metadata.
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Rules holds all the PolicyRules for this Role
    property rules : Array(Kubernetes::Apis::Rbac::V1alpha1::PolicyRule)

    YAML.mapping({
      api_version: {type: String, default: "rbac/v1alpha1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Role", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata"},
      rules:       {type: Array(Kubernetes::Apis::Rbac::V1alpha1::PolicyRule), nilable: false, key: "rules"},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "rbac/v1alpha1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Role", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata"},
      rules:       {type: Array(Kubernetes::Apis::Rbac::V1alpha1::PolicyRule), nilable: false, key: "rules"},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @rules : Array | Nil = nil)
    end
  end

  module Resources::Rbac::V1alpha1
    alias Role = Kubernetes::Apis::Rbac::V1alpha1::Role
  end
end
