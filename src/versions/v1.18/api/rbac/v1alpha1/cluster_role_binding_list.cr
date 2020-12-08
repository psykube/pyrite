# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ClusterRoleBindingList is a collection of ClusterRoleBindings. Deprecated in v1.17 in favor of [rbac.authorization.k8s.io/v1 ClusterRoleBindings, and will no longer be served in v1.20.](rbac.authorization.k8s.io/v1 ClusterRoleBindings, and will no longer be served in v1.20.)
  class Api::Rbac::V1alpha1::ClusterRoleBindingList
    getter api_version : String = "v1"
    getter kind : String = "List"
    # Items is a list of ClusterRoleBindings
    property items : Array(Api::Rbac::V1alpha1::ClusterRoleBinding)

    # Standard object's metadata.
    property metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "List", key: "kind", setter: false},
      items:       {type: Array(Api::Rbac::V1alpha1::ClusterRoleBinding), nilable: false, key: "items", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "List", key: "kind", setter: false},
      items:       {type: Array(Api::Rbac::V1alpha1::ClusterRoleBinding), nilable: false, key: "items", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    def initialize(*, @items : Array, @metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil = nil)
    end

    # create a ClusterRoleBinding
    def create_rbac_authorization_v1alpha1_cluster_role_binding(role_ref : Api::Rbac::V1alpha1::RoleRef, metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, subjects : Array | Nil = nil, context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil)
    end

    # list or watch objects of kind ClusterRoleBinding
    def self.list_rbac_authorization_v1alpha1_cluster_role_binding(context : String | Nil = nil, allow_watch_bookmarks : Bool | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # delete collection of ClusterRoleBinding
    def self.delete_rbac_authorization_v1alpha1_cluster_role_binding(context : String | Nil = nil, allow_watch_bookmarks : Bool | Nil = nil, continue : String | Nil = nil, dry_run : String | Nil = nil, field_selector : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, orphan_dependents : Bool | Nil = nil, propagation_policy : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end
  end
end
