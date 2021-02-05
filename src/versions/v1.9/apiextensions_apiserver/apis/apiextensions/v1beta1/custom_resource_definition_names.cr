# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CustomResourceDefinitionNames indicates the names to serve this CustomResourceDefinition
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Kind is the serialized kind of the resource.  It is normally CamelCase and singular.
    @[::JSON::Field(key: "kind")]
    @[::YAML::Field(key: "kind")]
    property kind : String

    # ListKind is the serialized kind of the list for this resource.  Defaults to <kind>List.
    @[::JSON::Field(key: "listKind")]
    @[::YAML::Field(key: "listKind")]
    property list_kind : String | Nil

    # Plural is the plural name of the resource to serve.  It must match the name of the CustomResourceDefinition-registration too: plural.group and it must be all lowercase.
    @[::JSON::Field(key: "plural")]
    @[::YAML::Field(key: "plural")]
    property plural : String

    # ShortNames are short names for the resource.  It must be all lowercase.
    @[::JSON::Field(key: "shortNames")]
    @[::YAML::Field(key: "shortNames")]
    property short_names : Array(String) | Nil

    # Singular is the singular name of the resource.  It must be all lowercase  Defaults to lowercased <kind>
    @[::JSON::Field(key: "singular")]
    @[::YAML::Field(key: "singular")]
    property singular : String | Nil

    def initialize(*, @kind : String, @list_kind : String | Nil = nil, @plural : String, @short_names : Array | Nil = nil, @singular : String | Nil = nil)
    end
  end
end
