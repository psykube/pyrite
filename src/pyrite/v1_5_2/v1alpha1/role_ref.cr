# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_2
  # RoleRef contains information that points to the role being used
  class Definitions::V1alpha1::RoleRef
    # APIGroup is the group for the resource being referenced
    property api_group : String

    # Kind is the type of resource being referenced
    property kind : String

    # Name is the name of resource being referenced
    property name : String

    YAML.mapping({api_group: {type: String, nilable: false, key: apiGroup, getter: false, setter: false},
                  kind:      {type: String, nilable: false, key: kind, getter: false, setter: false},
                  name:      {type: String, nilable: false, key: name, getter: false, setter: false}}, true)

    JSON.mapping({api_group: {type: String, nilable: false, key: apiGroup, getter: false, setter: false},
                  kind:      {type: String, nilable: false, key: kind, getter: false, setter: false},
                  name:      {type: String, nilable: false, key: name, getter: false, setter: false}}, true)

    def initialize(@api_group : String? = nil, @kind : String? = nil, @name : String? = nil)
    end
  end
end
