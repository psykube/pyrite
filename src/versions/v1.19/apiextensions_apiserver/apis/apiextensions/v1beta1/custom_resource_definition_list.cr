# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CustomResourceDefinitionList is a list of CustomResourceDefinition objects.
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionList
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[JSON::Field(key: "apiVersion")]
    @[YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String = "v1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "List"
    # items list individual CustomResourceDefinition objects
    @[JSON::Field(key: "items")]
    @[YAML::Field(key: "items")]
    property items : Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinition)

    @[JSON::Field(key: "metadata")]
    @[YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil

    def initialize(*, @items : Array, @metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil = nil)
    end
  end
end
