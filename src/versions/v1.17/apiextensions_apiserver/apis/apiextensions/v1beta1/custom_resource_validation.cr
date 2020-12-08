# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CustomResourceValidation is a list of validation methods for CustomResources.
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation
    # openAPIV3Schema is the OpenAPI v3 schema to use for validation and pruning.
    property open_apiv3_schema : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps | Nil

    ::YAML.mapping({
      open_apiv3_schema: {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps, nilable: true, key: "openAPIV3Schema", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      open_apiv3_schema: {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps, nilable: true, key: "openAPIV3Schema", getter: false, setter: false},
    }, true)

    def initialize(*, @open_apiv3_schema : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps | Nil = nil)
    end
  end
end
