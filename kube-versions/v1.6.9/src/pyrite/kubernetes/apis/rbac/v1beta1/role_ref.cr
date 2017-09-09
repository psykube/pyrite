# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # RoleRef contains information that points to the role being used
  class Kubernetes::Apis::Rbac::V1beta1::RoleRef
    # APIGroup is the group for the resource being referenced
    property api_group : String

    # Kind is the type of resource being referenced
    property kind : String

    # Name is the name of resource being referenced
    property name : String

    YAML.mapping({
      api_group: {type: String, nilable: false, key: "apiGroup"},
      kind:      {type: String, nilable: false, key: "kind"},
      name:      {type: String, nilable: false, key: "name"},
    }, true)

    JSON.mapping({
      api_group: {type: String, nilable: false, key: "apiGroup"},
      kind:      {type: String, nilable: false, key: "kind"},
      name:      {type: String, nilable: false, key: "name"},
    }, true)

    def initialize(*, @api_group : String | Nil = nil, @kind : String | Nil = nil, @name : String | Nil = nil)
    end
  end
end
