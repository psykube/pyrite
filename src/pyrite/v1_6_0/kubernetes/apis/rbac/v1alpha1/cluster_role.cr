# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# ClusterRole is a cluster level, logical grouping of PolicyRules that can be referenced as a unit by a RoleBinding or ClusterRoleBinding.
class Pyrite::V1_6_0::Kubernetes::Apis::Rbac::V1alpha1::ClusterRole
  # Standard object's metadata.
  property metadata : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Rules holds all the PolicyRules for this ClusterRole
  property rules : Array(::Pyrite::V1_6_0::Kubernetes::Apis::Rbac::V1alpha1::PolicyRule)

  YAML.mapping({
    api_version: {type: String, default: "ClusterRole", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    rules:       {type: Array(::Pyrite::V1_6_0::Kubernetes::Apis::Rbac::V1alpha1::PolicyRule), nilable: false, key: rules, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "ClusterRole", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    rules:       {type: Array(::Pyrite::V1_6_0::Kubernetes::Apis::Rbac::V1alpha1::PolicyRule), nilable: false, key: rules, getter: false, setter: false},
  }, true)

  def initialize(@rules, @metadata = nil)
    @api_version = "ClusterRole"
    @kind = "v1alpha1"
  end

  # list or watch objects of kind ClusterRole
  def self.get(pretty : String?, field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?)
  end

  # create a ClusterRole
  def self.create(rules, pretty : String?, metadata = nil)
  end

  # delete collection of ClusterRole
  def self.delete(pretty : String?, field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?)
  end

  # read the specified ClusterRole
  def self.get(pretty : String?, name : String)
  end

  # replace the specified ClusterRole
  def replace(rules, pretty : String?, metadata = nil)
  end

  # delete a ClusterRole
  def delete(pretty : String?, grace_period_seconds : Int32?, orphan_dependents : Bool?, propagation_policy : String?, preconditions = nil)
  end
end
