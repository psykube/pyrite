# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # APIResource specifies the name of a resource and whether it is namespaced.
  class Apimachinery::Apis::Meta::V1::APIResource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # categories is a list of the grouped resources this resource belongs to (e.g. 'all')
    @[::JSON::Field(key: "categories")]
    @[::YAML::Field(key: "categories")]
    property categories : Array(String) | Nil

    # kind is the kind for the resource (e.g. 'Foo' is the kind for a resource 'foo')
    @[::JSON::Field(key: "kind")]
    @[::YAML::Field(key: "kind")]
    property kind : String

    # name is the plural name of the resource.
    @[::JSON::Field(key: "name")]
    @[::YAML::Field(key: "name")]
    property name : String

    # namespaced indicates if a resource is namespaced or not.
    @[::JSON::Field(key: "namespaced")]
    @[::YAML::Field(key: "namespaced")]
    property namespaced : Bool

    # shortNames is a list of suggested short names of the resource.
    @[::JSON::Field(key: "shortNames")]
    @[::YAML::Field(key: "shortNames")]
    property short_names : Array(String) | Nil

    # singularName is the singular name of the resource.  This allows clients to handle plural and singular opaquely. The singularName is more correct for reporting status on a single item and both singular and plural are allowed from the kubectl CLI interface.
    @[::JSON::Field(key: "singularName")]
    @[::YAML::Field(key: "singularName")]
    property singular_name : String

    # verbs is a list of supported kube verbs (this includes get, list, watch, create, update, patch, delete, deletecollection, and proxy)
    @[::JSON::Field(key: "verbs")]
    @[::YAML::Field(key: "verbs")]
    property verbs : Array(String)

    def initialize(*, @categories : Array | Nil = nil, @kind : String, @name : String, @namespaced : Bool, @short_names : Array | Nil = nil, @singular_name : String, @verbs : Array)
    end
  end
end
