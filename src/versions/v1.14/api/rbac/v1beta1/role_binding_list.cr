# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # RoleBindingList is a collection of RoleBindings
  class Api::Rbac::V1beta1::RoleBindingList
    getter api_version : String = "v1"
    getter kind : String = "List"
    # Items is a list of RoleBindings
    property items : Array(Api::Rbac::V1beta1::RoleBinding)

    # Standard object's metadata.
    property metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "List", key: "kind", setter: false},
      items:       {type: Array(Api::Rbac::V1beta1::RoleBinding), nilable: false, key: "items", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "List", key: "kind", setter: false},
      items:       {type: Array(Api::Rbac::V1beta1::RoleBinding), nilable: false, key: "items", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    def initialize(*, @items : Array, @metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil = nil)
    end

    # create a RoleBinding
    def create_rbac_authorization_v1beta1_role_binding(role_ref : Api::Rbac::V1beta1::RoleRef, metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, subjects : Array | Nil = nil, context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil)
    end

    # list or watch objects of kind RoleBinding
    def self.list_rbac_authorization_v1beta1_role_binding(context : String | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # delete collection of RoleBinding
    def self.delete_rbac_authorization_v1beta1_role_binding(context : String | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # list or watch objects of kind RoleBinding
    def self.list_rbac_authorization_v1beta1_role_binding_for_all_namespaces(context : String | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end
  end
end
