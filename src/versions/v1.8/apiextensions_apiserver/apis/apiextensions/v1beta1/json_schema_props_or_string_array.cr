# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # JSONSchemaPropsOrStringArray represents a JSONSchemaProps or a string array.
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrStringArray < Kubernetes::Spec
    @[::JSON::Field(key: "Property")]
    @[::YAML::Field(key: "Property")]
    property property : Array(String)

    @[::JSON::Field(key: "Schema")]
    @[::YAML::Field(key: "Schema")]
    property schema : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps

    def initialize(*, @property : Array, @schema : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)
    end
  end
end
