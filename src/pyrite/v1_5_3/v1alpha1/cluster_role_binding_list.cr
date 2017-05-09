# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_3
  # ClusterRoleBindingList is a collection of ClusterRoleBindings
  class Definitions::V1alpha1::ClusterRoleBindingList
    # Items is a list of ClusterRoleBindings
    property items : Array(V1alpha1::ClusterRoleBinding)

    # Standard object's metadata.
    property metadata : Unversioned::ListMeta

    YAML.mapping({
      api_version: {type: String, default: "ClusterRoleBindingList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
      items:       {type: Array(V1alpha1::ClusterRoleBinding), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "ClusterRoleBindingList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
      items:       {type: Array(V1alpha1::ClusterRoleBinding), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @items : Array? = nil, @kind : String? = nil, @metadata : Unversioned::ListMeta = nil)
      @api_version = "v1alpha1"
      @kind = "ClusterRoleBindingList"
    end
  end

  module Resources::V1alpha1
    include Resource
    alias ClusterRoleBindingList = Definitions::V1alpha1::ClusterRoleBindingList
  end
end
