# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ClusterRoleBinding references a ClusterRole, but not contain it.  It can reference a ClusterRole in the global namespace, and adds who information via Subject.
  class Kubernetes::Apis::Rbac::V1alpha1::ClusterRoleBinding
    getter api_version : String = "rbac/v1alpha1"
    getter kind : String = "ClusterRoleBinding"
    # Standard object's metadata.
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # RoleRef can only reference a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error.
    property role_ref : Kubernetes::Apis::Rbac::V1alpha1::RoleRef

    # Subjects holds references to the objects the role applies to.
    property subjects : Array(Kubernetes::Apis::Rbac::V1alpha1::Subject)

    YAML.mapping({
      api_version: {type: String, default: "rbac/v1alpha1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "ClusterRoleBinding", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata"},
      role_ref:    {type: Kubernetes::Apis::Rbac::V1alpha1::RoleRef, nilable: false, key: "roleRef"},
      subjects:    {type: Array(Kubernetes::Apis::Rbac::V1alpha1::Subject), nilable: false, key: "subjects"},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "rbac/v1alpha1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "ClusterRoleBinding", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata"},
      role_ref:    {type: Kubernetes::Apis::Rbac::V1alpha1::RoleRef, nilable: false, key: "roleRef"},
      subjects:    {type: Array(Kubernetes::Apis::Rbac::V1alpha1::Subject), nilable: false, key: "subjects"},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @role_ref : Kubernetes::Apis::Rbac::V1alpha1::RoleRef | Nil = nil, @subjects : Array | Nil = nil)
    end
  end

  module Resources::Rbac::V1alpha1
    alias ClusterRoleBinding = Kubernetes::Apis::Rbac::V1alpha1::ClusterRoleBinding
  end
end
