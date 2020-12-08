# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # APIResource specifies the name of a resource and whether it is namespaced.
  class Apimachinery::Apis::Meta::V1::APIResource
    # categories is a list of the grouped resources this resource belongs to (e.g. 'all')
    property categories : Array(String) | Nil

    # group is the preferred group of the resource.  Empty implies the group of the containing resource list. For subresources, this may have a different value, for example: Scale".
    property group : String | Nil

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

    # The hash value of the storage version, the version this resource is converted to when written to the data store. Value must be treated as opaque by clients. Only equality comparison on the value is valid. This is an alpha feature and may change or be removed in the future. The field is populated by the apiserver only if the StorageVersionHash feature gate is enabled. This field will remain optional even if it graduates.
    property storage_version_hash : String | Nil

    # verbs is a list of supported kube verbs (this includes get, list, watch, create, update, patch, delete, deletecollection, and proxy)
    property verbs : Array(String)

    # version is the preferred version of the resource.  Empty implies the version of the containing resource list For subresources, this may have a different value, for example: v1 (while inside a v1beta1 version of the core resource's group)".
    property version : String | Nil

    ::YAML.mapping({
      categories:           {type: Array(String), nilable: true, key: "categories", getter: false, setter: false},
      group:                {type: String, nilable: true, key: "group", getter: false, setter: false},
      kind:                 {type: String, nilable: false, key: "kind", getter: false, setter: false},
      name:                 {type: String, nilable: false, key: "name", getter: false, setter: false},
      namespaced:           {type: Bool, nilable: false, key: "namespaced", getter: false, setter: false},
      short_names:          {type: Array(String), nilable: true, key: "shortNames", getter: false, setter: false},
      singular_name:        {type: String, nilable: false, key: "singularName", getter: false, setter: false},
      storage_version_hash: {type: String, nilable: true, key: "storageVersionHash", getter: false, setter: false},
      verbs:                {type: Array(String), nilable: false, key: "verbs", getter: false, setter: false},
      version:              {type: String, nilable: true, key: "version", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      categories:           {type: Array(String), nilable: true, key: "categories", getter: false, setter: false},
      group:                {type: String, nilable: true, key: "group", getter: false, setter: false},
      kind:                 {type: String, nilable: false, key: "kind", getter: false, setter: false},
      name:                 {type: String, nilable: false, key: "name", getter: false, setter: false},
      namespaced:           {type: Bool, nilable: false, key: "namespaced", getter: false, setter: false},
      short_names:          {type: Array(String), nilable: true, key: "shortNames", getter: false, setter: false},
      singular_name:        {type: String, nilable: false, key: "singularName", getter: false, setter: false},
      storage_version_hash: {type: String, nilable: true, key: "storageVersionHash", getter: false, setter: false},
      verbs:                {type: Array(String), nilable: false, key: "verbs", getter: false, setter: false},
      version:              {type: String, nilable: true, key: "version", getter: false, setter: false},
    }, true)

    def initialize(*, @kind : String, @name : String, @namespaced : Bool, @singular_name : String, @verbs : Array, @categories : Array | Nil = nil, @group : String | Nil = nil, @short_names : Array | Nil = nil, @storage_version_hash : String | Nil = nil, @version : String | Nil = nil)
    end
  end
end
