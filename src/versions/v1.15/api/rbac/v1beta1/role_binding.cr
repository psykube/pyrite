# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # RoleBinding references a role, but does not contain it.  It can reference a Role in the same namespace or a ClusterRole in the global namespace. It adds who information via Subjects and namespace information by which namespace it exists in.  RoleBindings in a given namespace only have effect in that namespace.
  class Api::Rbac::V1beta1::RoleBinding
    getter api_version : String = "rbac.authorization.k8s.io/v1beta1"
    getter kind : String = "RoleBinding"
    # Standard object's metadata.
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # RoleRef can reference a Role in the current namespace or a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error.
    property role_ref : Api::Rbac::V1beta1::RoleRef

    # Subjects holds references to the objects the role applies to.
    property subjects : Array(Api::Rbac::V1beta1::Subject) | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "rbac.authorization.k8s.io/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "RoleBinding", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      role_ref:    {type: Api::Rbac::V1beta1::RoleRef, nilable: false, key: "roleRef", getter: false, setter: false},
      subjects:    {type: Array(Api::Rbac::V1beta1::Subject), nilable: true, key: "subjects", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "rbac.authorization.k8s.io/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "RoleBinding", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      role_ref:    {type: Api::Rbac::V1beta1::RoleRef, nilable: false, key: "roleRef", getter: false, setter: false},
      subjects:    {type: Array(Api::Rbac::V1beta1::Subject), nilable: true, key: "subjects", getter: false, setter: false},
    }, true)

    def initialize(*, @role_ref : Api::Rbac::V1beta1::RoleRef, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @subjects : Array | Nil = nil)
    end
  end

  module Resources::Rbac::V1beta1
    alias RoleBinding = ::Pyrite::Api::Rbac::V1beta1::RoleBinding
  end
end
