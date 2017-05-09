# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_0
  # ClusterRoleBindingList is a collection of ClusterRoleBindings
  class Definitions::V1alpha1::ClusterRoleBindingList
    # Items is a list of ClusterRoleBindings
    property items : Array(V1alpha1::ClusterRoleBinding)

    # Standard object's metadata.
    property metadata : Unversioned::ListMeta

    YAML.mapping({items:    {type: Array(V1alpha1::ClusterRoleBinding), nilable: false, key: items, getter: false, setter: false},
                  metadata: {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false}}, true)

    JSON.mapping({items:    {type: Array(V1alpha1::ClusterRoleBinding), nilable: false, key: items, getter: false, setter: false},
                  metadata: {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false}}, true)

    def initialize(@items : Array? = nil, @metadata : Unversioned::ListMeta = nil)
    end
  end
end
