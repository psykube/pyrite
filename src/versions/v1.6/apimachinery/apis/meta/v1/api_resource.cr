# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # APIResource specifies the name of a resource and whether it is namespaced.
  class Apimachinery::Apis::Meta::V1::APIResource < Kubernetes::Spec
    # kind is the kind for the resource (e.g. 'Foo' is the kind for a resource 'foo')
    @[::JSON::Field(key: "kind")]
    @[::YAML::Field(key: "kind")]
    property kind : String

    # name is the name of the resource.
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

    # verbs is a list of supported kube verbs (this includes get, list, watch, create, update, patch, delete, deletecollection, and proxy)
    @[::JSON::Field(key: "verbs")]
    @[::YAML::Field(key: "verbs")]
    property verbs : Array(String)

    def initialize(*, @kind : String, @name : String, @namespaced : Bool, @short_names : Array | Nil = nil, @verbs : Array)
    end
  end
end
