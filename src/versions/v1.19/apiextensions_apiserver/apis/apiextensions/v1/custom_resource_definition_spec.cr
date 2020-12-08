# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CustomResourceDefinitionSpec describes how a user wants their resource to appear
  class ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionSpec
    # conversion defines conversion settings for the CRD.
    property conversion : ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceConversion | Nil

    # group is the API group of the defined custom resource. The custom resources are served under [`/apis/<group>/...`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).](`/apis/<group>/...`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).)
    property group : String

    # names specify the resource and kind names for the custom resource.
    property names : ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionNames

    # preserveUnknownFields indicates that object fields which are not specified in the OpenAPI schema should be preserved when persisting to storage. apiVersion, kind, metadata and known fields inside metadata are always preserved. This field is deprecated in favor of setting `x-preserve-unknown-fields` to true in `spec.versions[*].schema.openAPIV3Schema`. See [https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions/#pruning-versus-preserving-unknown-fields for details.](https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions/#pruning-versus-preserving-unknown-fields for details.)
    property preserve_unknown_fields : Bool | Nil

    # scope indicates whether the defined custom resource is cluster- or namespace-scoped. Allowed values are `Cluster` and `Namespaced`.
    property scope : String

    # versions is the list of all API versions of the defined custom resource. Version names are used to compute the order in which served versions are listed in API discovery. If the version string is "kube-like", it will sort above non "kube-like" version strings, which are ordered lexicographically. "Kube-like" versions start with a "v", then are followed by a number (the major version), then optionally the string "alpha" or "beta" and another number (the minor version). These are sorted first by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.
    property versions : Array(ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionVersion)

    ::YAML.mapping({
      conversion:              {type: ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceConversion, nilable: true, key: "conversion", getter: false, setter: false},
      group:                   {type: String, nilable: false, key: "group", getter: false, setter: false},
      names:                   {type: ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionNames, nilable: false, key: "names", getter: false, setter: false},
      preserve_unknown_fields: {type: Bool, nilable: true, key: "preserveUnknownFields", getter: false, setter: false},
      scope:                   {type: String, nilable: false, key: "scope", getter: false, setter: false},
      versions:                {type: Array(ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionVersion), nilable: false, key: "versions", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      conversion:              {type: ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceConversion, nilable: true, key: "conversion", getter: false, setter: false},
      group:                   {type: String, nilable: false, key: "group", getter: false, setter: false},
      names:                   {type: ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionNames, nilable: false, key: "names", getter: false, setter: false},
      preserve_unknown_fields: {type: Bool, nilable: true, key: "preserveUnknownFields", getter: false, setter: false},
      scope:                   {type: String, nilable: false, key: "scope", getter: false, setter: false},
      versions:                {type: Array(ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionVersion), nilable: false, key: "versions", getter: false, setter: false},
    }, true)

    def initialize(*, @group : String, @names : ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionNames, @scope : String, @versions : Array, @conversion : ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceConversion | Nil = nil, @preserve_unknown_fields : Bool | Nil = nil)
    end
  end
end
