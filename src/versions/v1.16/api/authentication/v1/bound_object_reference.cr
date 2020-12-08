# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # BoundObjectReference is a reference to an object that a token is bound to.
  class Api::Authentication::V1::BoundObjectReference
    # API version of the referent.
    property api_version : String | Nil

    # Kind of the referent. Valid kinds are 'Pod' and 'Secret'.
    property kind : String | Nil

    # Name of the referent.
    property name : String | Nil

    # UID of the referent.
    property uid : String | Nil

    ::YAML.mapping({
      api_version: {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
      kind:        {type: String, nilable: true, key: "kind", getter: false, setter: false},
      name:        {type: String, nilable: true, key: "name", getter: false, setter: false},
      uid:         {type: String, nilable: true, key: "uid", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
      kind:        {type: String, nilable: true, key: "kind", getter: false, setter: false},
      name:        {type: String, nilable: true, key: "name", getter: false, setter: false},
      uid:         {type: String, nilable: true, key: "uid", getter: false, setter: false},
    }, true)

    def initialize(*, @api_version : String | Nil = nil, @kind : String | Nil = nil, @name : String | Nil = nil, @uid : String | Nil = nil)
    end
  end
end
