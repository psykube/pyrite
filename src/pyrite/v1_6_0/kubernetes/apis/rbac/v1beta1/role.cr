# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_0
  # Role is a namespaced, logical grouping of PolicyRules that can be referenced as a unit by a RoleBinding.
  class Definitions::Kubernetes::Apis::Rbac::V1beta1::Role
    # Standard object's metadata.
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta

    # Rules holds all the PolicyRules for this Role
    property rules : Array(Kubernetes::Apis::Rbac::V1beta1::PolicyRule)

    YAML.mapping({
      api_version: {type: String, default: "Role", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      rules:       {type: Array(Kubernetes::Apis::Rbac::V1beta1::PolicyRule), nilable: false, key: rules, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "Role", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      rules:       {type: Array(Kubernetes::Apis::Rbac::V1beta1::PolicyRule), nilable: false, key: rules, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta = nil, @rules : Array? = nil)
      @api_version = "rbac/v1beta1"
      @kind = "Role"
    end
  end

  module Resources::Rbac::V1beta1
    include Resource
    alias Role = Definitions::Kubernetes::Apis::Rbac::V1beta1::Role
  end
end
