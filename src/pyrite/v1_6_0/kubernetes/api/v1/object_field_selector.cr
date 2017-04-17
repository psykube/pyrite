# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# ObjectFieldSelector selects an APIVersioned field of an object.
class Pyrite::V1_6_0::Kubernetes::Api::V1::ObjectFieldSelector
  # Version of the schema the FieldPath is written in terms of, defaults to "v1".
  property api_version : String?

  # Path of the field to select in the specified API version.
  property field_path : String

  YAML.mapping({api_version: {type: String, nilable: true, key: apiVersion, getter: false, setter: false},
                field_path:  {type: String, nilable: false, key: fieldPath, getter: false, setter: false}}, true)

  JSON.mapping({api_version: {type: String, nilable: true, key: apiVersion, getter: false, setter: false},
                field_path:  {type: String, nilable: false, key: fieldPath, getter: false, setter: false}}, true)

  def initialize(@field_path, @api_version = nil)
  end
end
