# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CustomResourceDefinition represents a resource that should be exposed on the API server.  Its name MUST be in the format <.spec.name>.<.spec.group>.
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinition
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion", converter: ::Pyrite::StringChecker.new("apiextensions/v1beta1"))]
    @[::YAML::Field(key: "apiVersion", converter: ::Pyrite::StringChecker.new("apiextensions/v1beta1"))]
    # The API and version we are accessing.
    getter api_version : String = "apiextensions/v1beta1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "CustomResourceDefinition"
    @[::JSON::Field(key: "metadata")]
    @[::YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec describes how the user wants the resources to appear
    @[::JSON::Field(key: "spec")]
    @[::YAML::Field(key: "spec")]
    property spec : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionSpec | Nil

    # Status indicates the actual state of the CustomResourceDefinition
    @[::JSON::Field(key: "status")]
    @[::YAML::Field(key: "status")]
    property status : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionStatus | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionSpec | Nil = nil, @status : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionStatus | Nil = nil)
    end
  end

  module Resources::Apiextensions::V1beta1
    alias CustomResourceDefinition = ::Pyrite::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinition
  end
end
