# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # TypedLocalObjectReference contains enough information to let you locate the typed referenced object inside the same namespace.
  class Api::Core::V1::TypedLocalObjectReference < Kubernetes::Spec
    # APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.
    @[::JSON::Field(key: "apiGroup")]
    @[::YAML::Field(key: "apiGroup")]
    property api_group : String | Nil

    # Kind is the type of resource being referenced
    @[::JSON::Field(key: "kind")]
    @[::YAML::Field(key: "kind")]
    property kind : String

    # Name is the name of resource being referenced
    @[::JSON::Field(key: "name")]
    @[::YAML::Field(key: "name")]
    property name : String

    def initialize(*, @api_group : String | Nil = nil, @kind : String, @name : String)
    end
  end
end
