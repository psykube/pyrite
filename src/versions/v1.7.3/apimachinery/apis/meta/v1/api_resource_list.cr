# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # APIResourceList is a list of APIResource, it is used to expose the name of the resources supported in a specific group and version, and if the resource is namespaced.
  class Apimachinery::Apis::Meta::V1::APIResourceList
    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/api-conventions.md#resources)
    property api_version : String | Nil

    # groupVersion is the group and version this APIResourceList is for.
    property group_version : String

    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds)
    property kind : String | Nil

    # resources contains the name of the resources and if they are namespaced.
    property resources : Array(Apimachinery::Apis::Meta::V1::APIResource)

    YAML.mapping({
      api_version:   {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
      group_version: {type: String, nilable: false, key: "groupVersion", getter: false, setter: false},
      kind:          {type: String, nilable: true, key: "kind", getter: false, setter: false},
      resources:     {type: Array(Apimachinery::Apis::Meta::V1::APIResource), nilable: false, key: "resources", getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version:   {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
      group_version: {type: String, nilable: false, key: "groupVersion", getter: false, setter: false},
      kind:          {type: String, nilable: true, key: "kind", getter: false, setter: false},
      resources:     {type: Array(Apimachinery::Apis::Meta::V1::APIResource), nilable: false, key: "resources", getter: false, setter: false},
    }, true)

    def initialize(*, @api_version : String | Nil = nil, @group_version : String | Nil = nil, @kind : String | Nil = nil, @resources : Array | Nil = nil)
    end
  end
end
