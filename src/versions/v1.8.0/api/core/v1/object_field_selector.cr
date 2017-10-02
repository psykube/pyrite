# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ObjectFieldSelector selects an APIVersioned field of an object.
  class Api::Core::V1::ObjectFieldSelector
    # Version of the schema the FieldPath is written in terms of, defaults to "v1".
    property api_version : String | Nil

    # Path of the field to select in the specified API version.
    property field_path : String

    YAML.mapping({
      api_version: {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
      field_path:  {type: String, nilable: false, key: "fieldPath", getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
      field_path:  {type: String, nilable: false, key: "fieldPath", getter: false, setter: false},
    }, true)

    def initialize(*, @api_version : String | Nil = nil, @field_path : String | Nil = nil)
    end
  end
end
