# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CustomResourceColumnDefinition specifies a column for server side printing.
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition
    # JSONPath is a simple JSON path, i.e. with array notation.
    property json_path : String

    # description is a human readable description of this column.
    property description : String | Nil

    # format is an optional OpenAPI type definition for this column. The 'name' format is applied to the primary identifier column to assist in clients identifying column is the resource name. See [https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for more.](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for more.)
    property format : String | Nil

    # name is a human readable name for the column.
    property name : String

    # priority is an integer defining the relative importance of this column compared to others. Lower numbers are considered higher priority. Columns that may be omitted in limited space scenarios should be given a higher priority.
    property priority : Int32 | Nil

    # type is an OpenAPI type definition for this column. See [https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for more.](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for more.)
    property type : String

    ::YAML.mapping({
      json_path:   {type: String, nilable: false, key: "JSONPath", getter: false, setter: false},
      description: {type: String, nilable: true, key: "description", getter: false, setter: false},
      format:      {type: String, nilable: true, key: "format", getter: false, setter: false},
      name:        {type: String, nilable: false, key: "name", getter: false, setter: false},
      priority:    {type: Int32, nilable: true, key: "priority", getter: false, setter: false},
      type:        {type: String, nilable: false, key: "type", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      json_path:   {type: String, nilable: false, key: "JSONPath", getter: false, setter: false},
      description: {type: String, nilable: true, key: "description", getter: false, setter: false},
      format:      {type: String, nilable: true, key: "format", getter: false, setter: false},
      name:        {type: String, nilable: false, key: "name", getter: false, setter: false},
      priority:    {type: Int32, nilable: true, key: "priority", getter: false, setter: false},
      type:        {type: String, nilable: false, key: "type", getter: false, setter: false},
    }, true)

    def initialize(*, @json_path : String, @name : String, @type : String, @description : String | Nil = nil, @format : String | Nil = nil, @priority : Int32 | Nil = nil)
    end
  end
end
