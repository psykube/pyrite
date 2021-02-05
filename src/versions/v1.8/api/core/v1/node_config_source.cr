# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NodeConfigSource specifies a source of node configuration. Exactly one subfield (excluding metadata) must be non-nil.
  class Api::Core::V1::NodeConfigSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/api-conventions.md#resources)
    @[JSON::Field(key: "apiVersion")]
    @[YAML::Field(key: "apiVersion")]
    property api_version : String | Nil

    @[JSON::Field(key: "configMapRef")]
    @[YAML::Field(key: "configMapRef")]
    property config_map_ref : Api::Core::V1::ObjectReference | Nil

    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds)
    @[JSON::Field(key: "kind")]
    @[YAML::Field(key: "kind")]
    property kind : String | Nil

    def initialize(*, @api_version : String | Nil = nil, @config_map_ref : Api::Core::V1::ObjectReference | Nil = nil, @kind : String | Nil = nil)
    end
  end
end
