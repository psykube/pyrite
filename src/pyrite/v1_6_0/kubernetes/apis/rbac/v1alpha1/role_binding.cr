# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_0
  # RoleBinding references a role, but does not contain it.  It can reference a Role in the same namespace or a ClusterRole in the global namespace. It adds who information via Subjects and namespace information by which namespace it exists in.  RoleBindings in a given namespace only have effect in that namespace.
  class Definitions::Kubernetes::Apis::Rbac::V1alpha1::RoleBinding
    # Standard object's metadata.
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta

    # RoleRef can reference a Role in the current namespace or a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error.
    property role_ref : Kubernetes::Apis::Rbac::V1alpha1::RoleRef

    # Subjects holds references to the objects the role applies to.
    property subjects : Array(Kubernetes::Apis::Rbac::V1alpha1::Subject)

    YAML.mapping({
      api_version: {type: String, default: "RoleBinding", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      role_ref:    {type: Kubernetes::Apis::Rbac::V1alpha1::RoleRef, nilable: false, key: roleRef, getter: false, setter: false},
      subjects:    {type: Array(Kubernetes::Apis::Rbac::V1alpha1::Subject), nilable: false, key: subjects, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "RoleBinding", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      role_ref:    {type: Kubernetes::Apis::Rbac::V1alpha1::RoleRef, nilable: false, key: roleRef, getter: false, setter: false},
      subjects:    {type: Array(Kubernetes::Apis::Rbac::V1alpha1::Subject), nilable: false, key: subjects, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta = nil, @role_ref : Kubernetes::Apis::Rbac::V1alpha1::RoleRef = nil, @subjects : Array? = nil)
      @api_version = "rbac/v1alpha1"
      @kind = "RoleBinding"
    end
  end

  module Resources::Rbac::V1alpha1
    include Resource
    alias RoleBinding = Definitions::Kubernetes::Apis::Rbac::V1alpha1::RoleBinding
  end
end
