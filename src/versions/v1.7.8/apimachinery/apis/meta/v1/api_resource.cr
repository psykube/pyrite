# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # APIResource specifies the name of a resource and whether it is namespaced.
  class Apimachinery::Apis::Meta::V1::APIResource
    # categories is a list of the grouped resources this resource belongs to (e.g. 'all')
    property categories : Array(String) | Nil

    # kind is the kind for the resource (e.g. 'Foo' is the kind for a resource 'foo')
    property kind : String

    # name is the plural name of the resource.
    property name : String

    # namespaced indicates if a resource is namespaced or not.
    property namespaced : Bool

    # shortNames is a list of suggested short names of the resource.
    property short_names : Array(String) | Nil

    # singularName is the singular name of the resource.  This allows clients to handle plural and singular opaquely. The singularName is more correct for reporting status on a single item and both singular and plural are allowed from the kubectl CLI interface.
    property singular_name : String

    # verbs is a list of supported kube verbs (this includes get, list, watch, create, update, patch, delete, deletecollection, and proxy)
    property verbs : Array(String)

    YAML.mapping({
      categories:    {type: Array(String), nilable: true, key: "categories", getter: false, setter: false},
      kind:          {type: String, nilable: false, key: "kind", getter: false, setter: false},
      name:          {type: String, nilable: false, key: "name", getter: false, setter: false},
      namespaced:    {type: Bool, nilable: false, key: "namespaced", getter: false, setter: false},
      short_names:   {type: Array(String), nilable: true, key: "shortNames", getter: false, setter: false},
      singular_name: {type: String, nilable: false, key: "singularName", getter: false, setter: false},
      verbs:         {type: Array(String), nilable: false, key: "verbs", getter: false, setter: false},
    }, true)

    JSON.mapping({
      categories:    {type: Array(String), nilable: true, key: "categories", getter: false, setter: false},
      kind:          {type: String, nilable: false, key: "kind", getter: false, setter: false},
      name:          {type: String, nilable: false, key: "name", getter: false, setter: false},
      namespaced:    {type: Bool, nilable: false, key: "namespaced", getter: false, setter: false},
      short_names:   {type: Array(String), nilable: true, key: "shortNames", getter: false, setter: false},
      singular_name: {type: String, nilable: false, key: "singularName", getter: false, setter: false},
      verbs:         {type: Array(String), nilable: false, key: "verbs", getter: false, setter: false},
    }, true)

    def initialize(*, @categories : Array | Nil = nil, @kind : String | Nil = nil, @name : String | Nil = nil, @namespaced : Bool | Nil = nil, @short_names : Array | Nil = nil, @singular_name : String | Nil = nil, @verbs : Array | Nil = nil)
    end
  end
end
