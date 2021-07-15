# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # APIResource specifies the name of a resource and whether it is namespaced.
  class Apimachinery::Apis::Meta::V1::APIResource < Kubernetes::Spec
    # categories is a list of the grouped resources this resource belongs to (e.g. 'all')
    @[::JSON::Field(key: "categories")]
    @[::YAML::Field(key: "categories")]
    property categories : Array(String) | Nil

    # group is the preferred group of the resource.  Empty implies the group of the containing resource list. For subresources, this may have a different value, for example: Scale".
    @[::JSON::Field(key: "group")]
    @[::YAML::Field(key: "group")]
    property group : String | Nil

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

    # The hash value of the storage version, the version this resource is converted to when written to the data store. Value must be treated as opaque by clients. Only equality comparison on the value is valid. This is an alpha feature and may change or be removed in the future. The field is populated by the apiserver only if the StorageVersionHash feature gate is enabled. This field will remain optional even if it graduates.
    @[::JSON::Field(key: "storageVersionHash")]
    @[::YAML::Field(key: "storageVersionHash")]
    property storage_version_hash : String | Nil

    # verbs is a list of supported kube verbs (this includes get, list, watch, create, update, patch, delete, deletecollection, and proxy)
    @[::JSON::Field(key: "verbs")]
    @[::YAML::Field(key: "verbs")]
    property verbs : Array(String)

    # version is the preferred version of the resource.  Empty implies the version of the containing resource list For subresources, this may have a different value, for example: v1 (while inside a v1beta1 version of the core resource's group)".
    @[::JSON::Field(key: "version")]
    @[::YAML::Field(key: "version")]
    property version : String | Nil

    def initialize(*, @categories : Array | Nil = nil, @group : String | Nil = nil, @kind : String, @name : String, @namespaced : Bool, @short_names : Array | Nil = nil, @singular_name : String, @storage_version_hash : String | Nil = nil, @verbs : Array, @version : String | Nil = nil)
    end
  end
end
