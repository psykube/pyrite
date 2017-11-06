# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # JSONSchemaPropsOrStringArray represents a JSONSchemaProps or a string array.
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrStringArray
    property property : Array(String)

    property schema : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps

    YAML.mapping({
      property: {type: Array(String), nilable: false, key: "Property", getter: false, setter: false},
      schema:   {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps, nilable: false, key: "Schema", getter: false, setter: false},
    }, true)

    JSON.mapping({
      property: {type: Array(String), nilable: false, key: "Property", getter: false, setter: false},
      schema:   {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps, nilable: false, key: "Schema", getter: false, setter: false},
    }, true)

    def initialize(*, @property : Array | Nil = nil, @schema : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps | Nil = nil)
    end
  end
end
