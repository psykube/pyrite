# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CustomResourceDefinitionSpec describes how a user wants their resource to appear
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionSpec
    # Group is the group this resource belongs in
    property group : String

    # Names are the names used to describe this custom resource
    property names : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames

    # Scope indicates whether this resource is cluster or namespace scoped.  Default is namespaced
    property scope : String

    # Subresources describes the subresources for CustomResources This field is alpha-level and should only be sent to servers that enable subresources via the CustomResourceSubresources feature gate.
    property subresources : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources | Nil

    # Validation describes the validation methods for CustomResources
    property validation : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation | Nil

    # Version is the version this resource belongs in
    property version : String

    ::YAML.mapping({
      group:        {type: String, nilable: false, key: "group", getter: false, setter: false},
      names:        {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames, nilable: false, key: "names", getter: false, setter: false},
      scope:        {type: String, nilable: false, key: "scope", getter: false, setter: false},
      subresources: {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources, nilable: true, key: "subresources", getter: false, setter: false},
      validation:   {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation, nilable: true, key: "validation", getter: false, setter: false},
      version:      {type: String, nilable: false, key: "version", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      group:        {type: String, nilable: false, key: "group", getter: false, setter: false},
      names:        {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames, nilable: false, key: "names", getter: false, setter: false},
      scope:        {type: String, nilable: false, key: "scope", getter: false, setter: false},
      subresources: {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources, nilable: true, key: "subresources", getter: false, setter: false},
      validation:   {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation, nilable: true, key: "validation", getter: false, setter: false},
      version:      {type: String, nilable: false, key: "version", getter: false, setter: false},
    }, true)

    def initialize(*, @group : String, @names : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames, @scope : String, @version : String, @subresources : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources | Nil = nil, @validation : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation | Nil = nil)
    end
  end
end
