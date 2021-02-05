# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ObjectFieldSelector selects an APIVersioned field of an object.
  class Api::Core::V1::ObjectFieldSelector
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Version of the schema the FieldPath is written in terms of, defaults to "v1".
    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    property api_version : String | Nil

    # Path of the field to select in the specified API version.
    @[::JSON::Field(key: "fieldPath")]
    @[::YAML::Field(key: "fieldPath")]
    property field_path : String

    def initialize(*, @api_version : String | Nil = nil, @field_path : String)
    end
  end
end
