# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # RoleRef contains information that points to the role being used
  class Api::Rbac::V1::RoleRef
    # APIGroup is the group for the resource being referenced
    property api_group : String

    # Kind is the type of resource being referenced
    property kind : String

    # Name is the name of resource being referenced
    property name : String

    ::YAML.mapping({
      api_group: {type: String, nilable: false, key: "apiGroup", getter: false, setter: false},
      kind:      {type: String, nilable: false, key: "kind", getter: false, setter: false},
      name:      {type: String, nilable: false, key: "name", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_group: {type: String, nilable: false, key: "apiGroup", getter: false, setter: false},
      kind:      {type: String, nilable: false, key: "kind", getter: false, setter: false},
      name:      {type: String, nilable: false, key: "name", getter: false, setter: false},
    }, true)

    def initialize(*, @api_group : String, @kind : String, @name : String)
    end
  end
end
