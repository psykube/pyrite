# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # JSONSchemaPropsOrArray represents a value that can either be a JSONSchemaProps or an array of JSONSchemaProps. Mainly here for serialization purposes.
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrArray < Kubernetes::Spec
    @[::JSON::Field(key: "JSONSchemas")]
    @[::YAML::Field(key: "JSONSchemas")]
    property json_schemas : Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)

    @[::JSON::Field(key: "Schema")]
    @[::YAML::Field(key: "Schema")]
    property schema : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps

    def initialize(*, @json_schemas : Array, @schema : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)
    end
  end
end
