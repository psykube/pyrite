# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_0
  # RoleList is a collection of Roles
  class Definitions::V1alpha1::RoleList
    # Items is a list of Roles
    property items : Array(V1alpha1::Role)

    # Standard object's metadata.
    property metadata : Unversioned::ListMeta

    YAML.mapping({items:    {type: Array(V1alpha1::Role), nilable: false, key: items, getter: false, setter: false},
                  metadata: {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false}}, true)

    JSON.mapping({items:    {type: Array(V1alpha1::Role), nilable: false, key: items, getter: false, setter: false},
                  metadata: {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false}}, true)

    def initialize(@items : Array? = nil, @metadata : Unversioned::ListMeta = nil)
    end
  end
end
