# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CustomResourceColumnDefinition specifies a column for server side printing.
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition
    include ::JSON::Serializable
    include ::YAML::Serializable

    # JSONPath is a simple JSON path (i.e. with array notation) which is evaluated against each custom resource to produce the value for this column.
    @[JSON::Field(key: "JSONPath")]
    @[YAML::Field(key: "JSONPath")]
    property json_path : String

    # description is a human readable description of this column.
    @[JSON::Field(key: "description")]
    @[YAML::Field(key: "description")]
    property description : String | Nil

    # format is an optional OpenAPI type definition for this column. The 'name' format is applied to the primary identifier column to assist in clients identifying column is the resource name. See [https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.)
    @[JSON::Field(key: "format")]
    @[YAML::Field(key: "format")]
    property format : String | Nil

    # name is a human readable name for the column.
    @[JSON::Field(key: "name")]
    @[YAML::Field(key: "name")]
    property name : String

    # priority is an integer defining the relative importance of this column compared to others. Lower numbers are considered higher priority. Columns that may be omitted in limited space scenarios should be given a priority greater than 0.
    @[JSON::Field(key: "priority")]
    @[YAML::Field(key: "priority")]
    property priority : Int32 | Nil

    # type is an OpenAPI type definition for this column. See [https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.)
    @[JSON::Field(key: "type")]
    @[YAML::Field(key: "type")]
    property type : String

    def initialize(*, @json_path : String, @description : String | Nil = nil, @format : String | Nil = nil, @name : String, @priority : Int32 | Nil = nil, @type : String)
    end
  end
end
