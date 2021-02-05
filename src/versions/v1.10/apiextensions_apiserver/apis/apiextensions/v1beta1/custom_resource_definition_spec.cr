# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CustomResourceDefinitionSpec describes how a user wants their resource to appear
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Group is the group this resource belongs in
    @[::JSON::Field(key: "group")]
    @[::YAML::Field(key: "group")]
    property group : String

    # Names are the names used to describe this custom resource
    @[::JSON::Field(key: "names")]
    @[::YAML::Field(key: "names")]
    property names : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames

    # Scope indicates whether this resource is cluster or namespace scoped.  Default is namespaced
    @[::JSON::Field(key: "scope")]
    @[::YAML::Field(key: "scope")]
    property scope : String

    # Subresources describes the subresources for CustomResources This field is alpha-level and should only be sent to servers that enable subresources via the CustomResourceSubresources feature gate.
    @[::JSON::Field(key: "subresources")]
    @[::YAML::Field(key: "subresources")]
    property subresources : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources | Nil

    # Validation describes the validation methods for CustomResources
    @[::JSON::Field(key: "validation")]
    @[::YAML::Field(key: "validation")]
    property validation : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation | Nil

    # Version is the version this resource belongs in
    @[::JSON::Field(key: "version")]
    @[::YAML::Field(key: "version")]
    property version : String

    def initialize(*, @group : String, @names : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames, @scope : String, @subresources : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources | Nil = nil, @validation : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation | Nil = nil, @version : String)
    end
  end
end
