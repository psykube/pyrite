# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # JSONSchemaPropsOrArray represents a value that can either be a JSONSchemaProps or an array of JSONSchemaProps. Mainly here for serialization purposes.
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrArray
    property jso_nschemas : Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)

    property schema : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps

    ::YAML.mapping({
      jso_nschemas: {type: Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps), nilable: false, key: "JSONSchemas", getter: false, setter: false},
      schema:       {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps, nilable: false, key: "Schema", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      jso_nschemas: {type: Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps), nilable: false, key: "JSONSchemas", getter: false, setter: false},
      schema:       {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps, nilable: false, key: "Schema", getter: false, setter: false},
    }, true)

    def initialize(*, @jso_nschemas : Array | Nil = nil, @schema : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps | Nil = nil)
    end
  end
end
