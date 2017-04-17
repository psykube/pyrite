# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# ClusterRoleBinding references a ClusterRole, but not contain it. It can reference a ClusterRole in the global namespace, and adds who information via Subject.
class Pyrite::V1_6_0::Kubernetes::Apis::Rbac::V1alpha1::ClusterRoleBinding
  # Standard object's metadata.
  property metadata : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta

  # RoleRef can only reference a ClusterRole in the global namespace.If the RoleRef cannot be resolved, the Authorizer must return an error.
  property role_ref : ::Pyrite::V1_6_0::Kubernetes::Apis::Rbac::V1alpha1::RoleRef

  # Subjects holds references to the objects the role applies to.
  property subjects : Array(::Pyrite::V1_6_0::Kubernetes::Apis::Rbac::V1alpha1::Subject)

  YAML.mapping({
    api_version: {type: String, default: "ClusterRoleBinding", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    role_ref:    {type: ::Pyrite::V1_6_0::Kubernetes::Apis::Rbac::V1alpha1::RoleRef, nilable: false, key: roleRef, getter: false, setter: false},
    subjects:    {type: Array(::Pyrite::V1_6_0::Kubernetes::Apis::Rbac::V1alpha1::Subject), nilable: false, key: subjects, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "ClusterRoleBinding", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    role_ref:    {type: ::Pyrite::V1_6_0::Kubernetes::Apis::Rbac::V1alpha1::RoleRef, nilable: false, key: roleRef, getter: false, setter: false},
    subjects:    {type: Array(::Pyrite::V1_6_0::Kubernetes::Apis::Rbac::V1alpha1::Subject), nilable: false, key: subjects, getter: false, setter: false},
  }, true)

  def initialize(@role_ref, @subjects, @metadata = nil)
    @api_version = "ClusterRoleBinding"
    @kind = "v1alpha1"
  end

  # list or watch objects of kind ClusterRoleBinding
  def self.get(pretty : String?, field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?)
  end

  # create a ClusterRoleBinding
  def self.create(role_ref, subjects, pretty : String?, metadata = nil)
  end

  # delete collection of ClusterRoleBinding
  def self.delete(pretty : String?, field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?)
  end

  # read the specified ClusterRoleBinding
  def self.get(pretty : String?, name : String)
  end

  # replace the specified ClusterRoleBinding
  def replace(role_ref, subjects, pretty : String?, metadata = nil)
  end

  # delete a ClusterRoleBinding
  def delete(pretty : String?, grace_period_seconds : Int32?, orphan_dependents : Bool?, propagation_policy : String?, preconditions = nil)
  end
end
