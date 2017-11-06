# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NodeConfigSource specifies a source of node configuration. Exactly one subfield (excluding metadata) must be non-nil.
  class Api::Core::V1::NodeConfigSource
    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/api-conventions.md#resources)
    property api_version : String | Nil

    property config_map_ref : Api::Core::V1::ObjectReference | Nil

    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds)
    property kind : String | Nil

    YAML.mapping({
      api_version:    {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
      config_map_ref: {type: Api::Core::V1::ObjectReference, nilable: true, key: "configMapRef", getter: false, setter: false},
      kind:           {type: String, nilable: true, key: "kind", getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version:    {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
      config_map_ref: {type: Api::Core::V1::ObjectReference, nilable: true, key: "configMapRef", getter: false, setter: false},
      kind:           {type: String, nilable: true, key: "kind", getter: false, setter: false},
    }, true)

    def initialize(*, @api_version : String | Nil = nil, @config_map_ref : Api::Core::V1::ObjectReference | Nil = nil, @kind : String | Nil = nil)
    end
  end
end
