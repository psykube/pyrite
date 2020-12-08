# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Role is a namespaced, logical grouping of PolicyRules that can be referenced as a unit by a RoleBinding.
  class Api::Rbac::V1::Role
    getter api_version : String = "rbac.authorization.k8s.io/v1"
    getter kind : String = "Role"
    # Standard object's metadata.
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Rules holds all the PolicyRules for this Role
    property rules : Array(Api::Rbac::V1::PolicyRule)

    ::YAML.mapping({
      api_version: {type: String, default: "rbac.authorization.k8s.io/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Role", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      rules:       {type: Array(Api::Rbac::V1::PolicyRule), nilable: false, key: "rules", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "rbac.authorization.k8s.io/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Role", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      rules:       {type: Array(Api::Rbac::V1::PolicyRule), nilable: false, key: "rules", getter: false, setter: false},
    }, true)

    def initialize(*, @rules : Array, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil)
    end

    # create a Role
    def create_rbac_authorization_v1_role(context : String | Nil = nil)
    end

    # list or watch objects of kind Role
    def self.list_rbac_authorization_v1_role(context : String | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, include_uninitialized : Bool | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # delete collection of Role
    def self.delete_rbac_authorization_v1_role(context : String | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, include_uninitialized : Bool | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # read the specified Role
    def self.read_rbac_authorization_v1_role(name : String, context : String | Nil = nil, namespace : String = "default")
    end

    # replace the specified Role
    def replace_rbac_authorization_v1_role(context : String | Nil = nil)
    end

    # partially update the specified Role
    def patch_rbac_authorization_v1_role(context : String | Nil = nil)
    end

    # delete a Role
    def delete_rbac_authorization_v1_role(api_version : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, kind : String | Nil = nil, orphan_dependents : Bool | Nil = nil, preconditions : Apimachinery::Apis::Meta::V1::Preconditions | Nil = nil, propagation_policy : String | Nil = nil, context : String | Nil = nil)
    end
  end

  module Resources::Rbac::V1
    alias Role = ::Pyrite::Api::Rbac::V1::Role
  end
end
