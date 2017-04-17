# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# ClusterRoleList is a collection of ClusterRoles
class Pyrite::V1_6_0::Kubernetes::Apis::Rbac::V1beta1::ClusterRoleList
  # Items is a list of ClusterRoles
  property items : Array(::Pyrite::V1_6_0::Kubernetes::Apis::Rbac::V1beta1::ClusterRole)

  # Standard object's metadata.
  property metadata : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "ClusterRoleList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    items:       {type: Array(::Pyrite::V1_6_0::Kubernetes::Apis::Rbac::V1beta1::ClusterRole), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "ClusterRoleList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    items:       {type: Array(::Pyrite::V1_6_0::Kubernetes::Apis::Rbac::V1beta1::ClusterRole), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@items, @metadata = nil)
    @api_version = "ClusterRoleList"
    @kind = "v1beta1"
  end

  # create a ClusterRole
  def create_rbac_authorization_v1beta1cluster_role(metadata = nil)
  end

  # list or watch objects of kind ClusterRole
  def self.list_rbac_authorization_v1beta1cluster_role(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?)
  end

  # delete collection of ClusterRole
  def self.delete_rbac_authorization_v1beta1cluster_role(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?)
  end
end
