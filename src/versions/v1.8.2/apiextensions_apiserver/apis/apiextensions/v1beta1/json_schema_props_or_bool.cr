# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # JSONSchemaPropsOrBool represents JSONSchemaProps or a boolean value. Defaults to true for the boolean property.
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool
    property allows : Bool

    property schema : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps

    YAML.mapping({
      allows: {type: Bool, nilable: false, key: "Allows", getter: false, setter: false},
      schema: {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps, nilable: false, key: "Schema", getter: false, setter: false},
    }, true)

    JSON.mapping({
      allows: {type: Bool, nilable: false, key: "Allows", getter: false, setter: false},
      schema: {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps, nilable: false, key: "Schema", getter: false, setter: false},
    }, true)

    def initialize(*, @allows : Bool | Nil = nil, @schema : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps | Nil = nil)
    end
  end
end
