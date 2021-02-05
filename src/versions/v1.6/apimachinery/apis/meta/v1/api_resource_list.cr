# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # APIResourceList is a list of APIResource, it is used to expose the name of the resources supported in a specific group and version, and if the resource is namespaced.
  class Apimachinery::Apis::Meta::V1::APIResourceList
    include ::JSON::Serializable
    include ::YAML::Serializable

    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources)
    @[JSON::Field(key: "apiVersion")]
    @[YAML::Field(key: "apiVersion")]
    property api_version : String | Nil

    # groupVersion is the group and version this APIResourceList is for.
    @[JSON::Field(key: "groupVersion")]
    @[YAML::Field(key: "groupVersion")]
    property group_version : String

    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds)
    @[JSON::Field(key: "kind")]
    @[YAML::Field(key: "kind")]
    property kind : String | Nil

    # resources contains the name of the resources and if they are namespaced.
    @[JSON::Field(key: "resources")]
    @[YAML::Field(key: "resources")]
    property resources : Array(Apimachinery::Apis::Meta::V1::APIResource)

    def initialize(*, @api_version : String | Nil = nil, @group_version : String, @kind : String | Nil = nil, @resources : Array)
    end
  end
end
