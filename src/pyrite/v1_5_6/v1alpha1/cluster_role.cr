# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_6
  # ClusterRole is a cluster level, logical grouping of PolicyRules that can be referenced as a unit by a RoleBinding or ClusterRoleBinding.
  class Definitions::V1alpha1::ClusterRole
    # Standard object's metadata.
    property metadata : V1::ObjectMeta

    # Rules holds all the PolicyRules for this ClusterRole
    property rules : Array(V1alpha1::PolicyRule)

    YAML.mapping({
      api_version: {type: String, default: "ClusterRole", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
      metadata:    {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      rules:       {type: Array(V1alpha1::PolicyRule), nilable: false, key: rules, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "ClusterRole", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
      metadata:    {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      rules:       {type: Array(V1alpha1::PolicyRule), nilable: false, key: rules, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : V1::ObjectMeta = nil, @rules : Array? = nil)
      @api_version = "v1alpha1"
      @kind = "ClusterRole"
    end
  end

  module Resources::V1alpha1
    include Resource
    alias ClusterRole = Definitions::V1alpha1::ClusterRole
  end
end
