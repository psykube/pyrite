# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CustomResourceValidation is a list of validation methods for CustomResources.
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation < Kubernetes::Spec
    # OpenAPIV3Schema is the OpenAPI v3 schema to be validated against.
    @[::JSON::Field(key: "openAPIV3Schema")]
    @[::YAML::Field(key: "openAPIV3Schema")]
    property open_apiv3_schema : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps | Nil

    def initialize(*, @open_apiv3_schema : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps | Nil = nil)
    end
  end
end
