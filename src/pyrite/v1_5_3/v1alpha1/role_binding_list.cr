# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_3
  # RoleBindingList is a collection of RoleBindings
  class Definitions::V1alpha1::RoleBindingList
    # Items is a list of RoleBindings
    property items : Array(V1alpha1::RoleBinding)

    # Standard object's metadata.
    property metadata : Unversioned::ListMeta

    YAML.mapping({
      api_version: {type: String, default: "RoleBindingList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
      items:       {type: Array(V1alpha1::RoleBinding), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "RoleBindingList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
      items:       {type: Array(V1alpha1::RoleBinding), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @items : Array? = nil, @kind : String? = nil, @metadata : Unversioned::ListMeta = nil)
      @api_version = "v1alpha1"
      @kind = "RoleBindingList"
    end
  end

  module Resources::V1alpha1
    include Resource
    alias RoleBindingList = Definitions::V1alpha1::RoleBindingList
  end
end
