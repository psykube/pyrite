# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# Role is a namespaced, logical grouping of PolicyRules that can be referenced as a unit by a RoleBinding.
class Pyrite::V1_6_1::Kubernetes::Apis::Rbac::V1alpha1::Role
  # Standard object's metadata.
  property metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Rules holds all the PolicyRules for this Role
  property rules : Array(::Pyrite::V1_6_1::Kubernetes::Apis::Rbac::V1alpha1::PolicyRule)

  YAML.mapping({
    api_version: {type: String, default: "Role", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    rules:       {type: Array(::Pyrite::V1_6_1::Kubernetes::Apis::Rbac::V1alpha1::PolicyRule), nilable: false, key: rules, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "Role", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    rules:       {type: Array(::Pyrite::V1_6_1::Kubernetes::Apis::Rbac::V1alpha1::PolicyRule), nilable: false, key: rules, getter: false, setter: false},
  }, true)

  def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta = nil, @rules : Array? = nil)
    @api_version = "Role"
    @kind = "v1alpha1"
  end

  # create a Role
  def create_rbac_authorization_v1alpha1role(context : String? = nil)
  end

  # list or watch objects of kind Role
  def self.list_rbac_authorization_v1alpha1role(context : String? = nil, field_selector : String? = nil, label_selector : String? = nil, resource_version : String? = nil, timeout_seconds : Int32? = nil, watch : Bool? = nil, namespace : String = "default")
  end

  # delete collection of Role
  def self.delete_rbac_authorization_v1alpha1role(context : String? = nil, field_selector : String? = nil, label_selector : String? = nil, resource_version : String? = nil, timeout_seconds : Int32? = nil, watch : Bool? = nil, namespace : String = "default")
  end

  # read the specified Role
  def self.read_rbac_authorization_v1alpha1role(name : String, context : String? = nil, namespace : String = "default")
  end

  # replace the specified Role
  def replace_rbac_authorization_v1alpha1role(context : String? = nil)
  end

  # partially update the specified Role
  def patch_rbac_authorization_v1alpha1role(context : String? = nil)
  end

  # delete a Role
  def delete_rbac_authorization_v1alpha1role(grace_period_seconds : Int32? = nil, orphan_dependents : Bool? = nil, preconditions : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::Preconditions = nil, propagation_policy : String? = nil, context : String? = nil)
  end
end
