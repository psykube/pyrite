# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_0
  # RoleBindingList is a collection of RoleBindings
  class Definitions::V1alpha1::RoleBindingList
    # Items is a list of RoleBindings
    property items : Array(V1alpha1::RoleBinding)

    # Standard object's metadata.
    property metadata : Unversioned::ListMeta

    YAML.mapping({items:    {type: Array(V1alpha1::RoleBinding), nilable: false, key: items, getter: false, setter: false},
                  metadata: {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false}}, true)

    JSON.mapping({items:    {type: Array(V1alpha1::RoleBinding), nilable: false, key: items, getter: false, setter: false},
                  metadata: {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false}}, true)

    def initialize(@items : Array? = nil, @metadata : Unversioned::ListMeta = nil)
    end
  end
end
