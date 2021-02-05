# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # JSONSchemaPropsOrBool represents JSONSchemaProps or a boolean value. Defaults to true for the boolean property.
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[JSON::Field(key: "Allows")]
    @[YAML::Field(key: "Allows")]
    property allows : Bool

    @[JSON::Field(key: "Schema")]
    @[YAML::Field(key: "Schema")]
    property schema : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps

    def initialize(*, @allows : Bool, @schema : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)
    end
  end
end
