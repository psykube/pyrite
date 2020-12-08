# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ClusterRoleBinding references a ClusterRole, but not contain it.  It can reference a ClusterRole in the global namespace, and adds who information via Subject.
  class Api::Rbac::V1alpha1::ClusterRoleBinding
    getter api_version : String = "rbac.authorization.k8s.io/v1alpha1"
    getter kind : String = "ClusterRoleBinding"
    # Standard object's metadata.
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # RoleRef can only reference a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error.
    property role_ref : Api::Rbac::V1alpha1::RoleRef

    # Subjects holds references to the objects the role applies to.
    property subjects : Array(Api::Rbac::V1alpha1::Subject)

    ::YAML.mapping({
      api_version: {type: String, default: "rbac.authorization.k8s.io/v1alpha1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "ClusterRoleBinding", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      role_ref:    {type: Api::Rbac::V1alpha1::RoleRef, nilable: false, key: "roleRef", getter: false, setter: false},
      subjects:    {type: Array(Api::Rbac::V1alpha1::Subject), nilable: false, key: "subjects", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "rbac.authorization.k8s.io/v1alpha1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "ClusterRoleBinding", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      role_ref:    {type: Api::Rbac::V1alpha1::RoleRef, nilable: false, key: "roleRef", getter: false, setter: false},
      subjects:    {type: Array(Api::Rbac::V1alpha1::Subject), nilable: false, key: "subjects", getter: false, setter: false},
    }, true)

    def initialize(*, @role_ref : Api::Rbac::V1alpha1::RoleRef, @subjects : Array, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil)
    end

    # create a ClusterRoleBinding
    def create_rbac_authorization_v1alpha1_cluster_role_binding(context : String | Nil = nil)
    end

    # list or watch objects of kind ClusterRoleBinding
    def self.list_rbac_authorization_v1alpha1_cluster_role_binding(context : String | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, include_uninitialized : Bool | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # delete collection of ClusterRoleBinding
    def self.delete_rbac_authorization_v1alpha1_cluster_role_binding(context : String | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, include_uninitialized : Bool | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # read the specified ClusterRoleBinding
    def self.read_rbac_authorization_v1alpha1_cluster_role_binding(name : String, context : String | Nil = nil)
    end

    # replace the specified ClusterRoleBinding
    def replace_rbac_authorization_v1alpha1_cluster_role_binding(context : String | Nil = nil)
    end

    # partially update the specified ClusterRoleBinding
    def patch_rbac_authorization_v1alpha1_cluster_role_binding(context : String | Nil = nil)
    end

    # delete a ClusterRoleBinding
    def delete_rbac_authorization_v1alpha1_cluster_role_binding(api_version : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, kind : String | Nil = nil, orphan_dependents : Bool | Nil = nil, preconditions : Apimachinery::Apis::Meta::V1::Preconditions | Nil = nil, propagation_policy : String | Nil = nil, context : String | Nil = nil)
    end
  end

  module Resources::Rbac::V1alpha1
    alias ClusterRoleBinding = ::Pyrite::Api::Rbac::V1alpha1::ClusterRoleBinding
  end
end
