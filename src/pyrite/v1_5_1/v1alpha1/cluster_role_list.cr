# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_1
  # ClusterRoleList is a collection of ClusterRoles
  class Definitions::V1alpha1::ClusterRoleList
    # Items is a list of ClusterRoles
    property items : Array(V1alpha1::ClusterRole)

    # Standard object's metadata.
    property metadata : Unversioned::ListMeta

    YAML.mapping({items:    {type: Array(V1alpha1::ClusterRole), nilable: false, key: items, getter: false, setter: false},
                  metadata: {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false}}, true)

    JSON.mapping({items:    {type: Array(V1alpha1::ClusterRole), nilable: false, key: items, getter: false, setter: false},
                  metadata: {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false}}, true)

    def initialize(@items : Array? = nil, @metadata : Unversioned::ListMeta = nil)
    end
  end
end
