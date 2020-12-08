# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ClusterRoleList is a collection of ClusterRoles
  class Kubernetes::Apis::Rbac::V1alpha1::ClusterRoleList
    getter api_version : String = "v1"
    getter kind : String = "List"
    # Items is a list of ClusterRoles
    property items : Array(Kubernetes::Apis::Rbac::V1alpha1::ClusterRole)

    # Standard object's metadata.
    property metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "List", key: "kind", setter: false},
      items:       {type: Array(Kubernetes::Apis::Rbac::V1alpha1::ClusterRole), nilable: false, key: "items", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "List", key: "kind", setter: false},
      items:       {type: Array(Kubernetes::Apis::Rbac::V1alpha1::ClusterRole), nilable: false, key: "items", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    def initialize(*, @items : Array, @metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil = nil)
    end

    # create a ClusterRole
    def create_rbac_authorization_v1alpha1_cluster_role(rules : Array, metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, context : String | Nil = nil)
    end

    # list or watch objects of kind ClusterRole
    def self.list_rbac_authorization_v1alpha1_cluster_role(context : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # delete collection of ClusterRole
    def self.delete_rbac_authorization_v1alpha1_cluster_role(context : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end
  end
end
