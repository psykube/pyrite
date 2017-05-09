# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_3
  # ClusterRoleList is a collection of ClusterRoles
  class Definitions::V1alpha1::ClusterRoleList
    # Items is a list of ClusterRoles
    property items : Array(V1alpha1::ClusterRole)

    # Standard object's metadata.
    property metadata : Unversioned::ListMeta

    YAML.mapping({
      api_version: {type: String, default: "ClusterRoleList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
      items:       {type: Array(V1alpha1::ClusterRole), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "ClusterRoleList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
      items:       {type: Array(V1alpha1::ClusterRole), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @items : Array? = nil, @kind : String? = nil, @metadata : Unversioned::ListMeta = nil)
      @api_version = "v1alpha1"
      @kind = "ClusterRoleList"
    end
  end

  module Resources::V1alpha1
    include Resource
    alias ClusterRoleList = Definitions::V1alpha1::ClusterRoleList
  end
end
