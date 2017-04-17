# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# ClusterRoleBindingList is a collection of ClusterRoleBindings
class Pyrite::V1_6_1::Kubernetes::Apis::Rbac::V1alpha1::ClusterRoleBindingList
  # Items is a list of ClusterRoleBindings
  property items : Array(::Pyrite::V1_6_1::Kubernetes::Apis::Rbac::V1alpha1::ClusterRoleBinding)

  # Standard object's metadata.
  property metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "ClusterRoleBindingList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
    items:       {type: Array(::Pyrite::V1_6_1::Kubernetes::Apis::Rbac::V1alpha1::ClusterRoleBinding), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "ClusterRoleBindingList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
    items:       {type: Array(::Pyrite::V1_6_1::Kubernetes::Apis::Rbac::V1alpha1::ClusterRoleBinding), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@items, @metadata = nil)
    @api_version = "ClusterRoleBindingList"
    @kind = "v1alpha1"
  end

  # create a ClusterRoleBinding
  def create_rbac_authorization_v1alpha1cluster_role_binding(metadata = nil)
  end

  # list or watch objects of kind ClusterRoleBinding
  def self.list_rbac_authorization_v1alpha1cluster_role_binding(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?)
  end

  # delete collection of ClusterRoleBinding
  def self.delete_rbac_authorization_v1alpha1cluster_role_binding(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?)
  end
end
