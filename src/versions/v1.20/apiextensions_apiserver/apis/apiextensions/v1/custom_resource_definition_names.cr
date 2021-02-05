# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CustomResourceDefinitionNames indicates the names to serve this CustomResourceDefinition
  class ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionNames
    include ::JSON::Serializable
    include ::YAML::Serializable

    # categories is a list of grouped resources this custom resource belongs to (e.g. 'all'). This is published in API discovery documents, and used by clients to support invocations like `kubectl get all`.
    @[JSON::Field(key: "categories")]
    @[YAML::Field(key: "categories")]
    property categories : Array(String) | Nil

    # kind is the serialized kind of the resource. It is normally CamelCase and singular. Custom resource instances will use this value as the `kind` attribute in API calls.
    @[JSON::Field(key: "kind")]
    @[YAML::Field(key: "kind")]
    property kind : String

    # listKind is the serialized kind of the list for this resource. Defaults to "`kind`List".
    @[JSON::Field(key: "listKind")]
    @[YAML::Field(key: "listKind")]
    property list_kind : String | Nil

    # plural is the plural name of the resource to serve. The custom resources are served under [`/apis/<group>/<version>/.../<plural>`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`). Must be all lowercase.](`/apis/<group>/<version>/.../<plural>`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`). Must be all lowercase.)
    @[JSON::Field(key: "plural")]
    @[YAML::Field(key: "plural")]
    property plural : String

    # shortNames are short names for the resource, exposed in API discovery documents, and used by clients to support invocations like `kubectl get <shortname>`. It must be all lowercase.
    @[JSON::Field(key: "shortNames")]
    @[YAML::Field(key: "shortNames")]
    property short_names : Array(String) | Nil

    # singular is the singular name of the resource. It must be all lowercase. Defaults to lowercased `kind`.
    @[JSON::Field(key: "singular")]
    @[YAML::Field(key: "singular")]
    property singular : String | Nil

    def initialize(*, @categories : Array | Nil = nil, @kind : String, @list_kind : String | Nil = nil, @plural : String, @short_names : Array | Nil = nil, @singular : String | Nil = nil)
    end
  end
end
