# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # RoleBinding references a role, but does not contain it.  It can reference a Role in the same namespace or a ClusterRole in the global namespace. It adds who information via Subjects and namespace information by which namespace it exists in.  RoleBindings in a given namespace only have effect in that namespace.
  class Kubernetes::Apis::Rbac::V1alpha1::RoleBinding
    getter api_version : String = "rbac.authorization.k8s.io/v1alpha1"
    getter kind : String = "RoleBinding"
    # Standard object's metadata.
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # RoleRef can reference a Role in the current namespace or a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error.
    property role_ref : Kubernetes::Apis::Rbac::V1alpha1::RoleRef

    # Subjects holds references to the objects the role applies to.
    property subjects : Array(Kubernetes::Apis::Rbac::V1alpha1::Subject)

    ::YAML.mapping({
      api_version: {type: String, default: "rbac.authorization.k8s.io/v1alpha1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "RoleBinding", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      role_ref:    {type: Kubernetes::Apis::Rbac::V1alpha1::RoleRef, nilable: false, key: "roleRef", getter: false, setter: false},
      subjects:    {type: Array(Kubernetes::Apis::Rbac::V1alpha1::Subject), nilable: false, key: "subjects", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "rbac.authorization.k8s.io/v1alpha1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "RoleBinding", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      role_ref:    {type: Kubernetes::Apis::Rbac::V1alpha1::RoleRef, nilable: false, key: "roleRef", getter: false, setter: false},
      subjects:    {type: Array(Kubernetes::Apis::Rbac::V1alpha1::Subject), nilable: false, key: "subjects", getter: false, setter: false},
    }, true)

    def initialize(*, @role_ref : Kubernetes::Apis::Rbac::V1alpha1::RoleRef, @subjects : Array, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil)
    end

    # create a RoleBinding
    def create_rbac_authorization_v1alpha1_role_binding(context : String | Nil = nil)
    end

    # list or watch objects of kind RoleBinding
    def self.list_rbac_authorization_v1alpha1_role_binding(context : String | Nil = nil, field_selector : String | Nil = nil, include_uninitialized : Bool | Nil = nil, label_selector : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # delete collection of RoleBinding
    def self.delete_rbac_authorization_v1alpha1_role_binding(context : String | Nil = nil, field_selector : String | Nil = nil, include_uninitialized : Bool | Nil = nil, label_selector : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # read the specified RoleBinding
    def self.read_rbac_authorization_v1alpha1_role_binding(name : String, context : String | Nil = nil, namespace : String = "default")
    end

    # replace the specified RoleBinding
    def replace_rbac_authorization_v1alpha1_role_binding(context : String | Nil = nil)
    end

    # partially update the specified RoleBinding
    def patch_rbac_authorization_v1alpha1_role_binding(context : String | Nil = nil)
    end

    # delete a RoleBinding
    def delete_rbac_authorization_v1alpha1_role_binding(api_version : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, kind : String | Nil = nil, orphan_dependents : Bool | Nil = nil, preconditions : Apimachinery::Apis::Meta::V1::Preconditions | Nil = nil, propagation_policy : String | Nil = nil, context : String | Nil = nil)
    end
  end

  module Resources::Rbac::V1alpha1
    alias RoleBinding = ::Pyrite::Kubernetes::Apis::Rbac::V1alpha1::RoleBinding
  end
end
