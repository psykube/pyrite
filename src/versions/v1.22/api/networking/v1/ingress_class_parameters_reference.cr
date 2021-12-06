# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # IngressClassParametersReference identifies an API object. This can be used to specify a cluster or namespace-scoped resource.
  class Api::Networking::V1::IngressClassParametersReference < Kubernetes::Spec
    # APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.
    @[::JSON::Field(key: "apiGroup")]
    @[::YAML::Field(key: "apiGroup")]
    property api_group : String | Nil

    # Kind is the type of resource being referenced.
    @[::JSON::Field(key: "kind")]
    @[::YAML::Field(key: "kind")]
    property kind : String

    # Name is the name of resource being referenced.
    @[::JSON::Field(key: "name")]
    @[::YAML::Field(key: "name")]
    property name : String

    # Namespace is the namespace of the resource being referenced. This field is required when scope is set to "Namespace" and must be unset when scope is set to "Cluster".
    @[::JSON::Field(key: "namespace")]
    @[::YAML::Field(key: "namespace")]
    property namespace : String | Nil

    # Scope represents if this refers to a cluster or namespace scoped resource. This may be set to "Cluster" (default) or "Namespace". Field can be enabled with IngressClassNamespacedParams feature gate.
    @[::JSON::Field(key: "scope")]
    @[::YAML::Field(key: "scope")]
    property scope : String | Nil

    def initialize(*, @api_group : String | Nil = nil, @kind : String, @name : String, @namespace : String | Nil = nil, @scope : String | Nil = nil)
    end
  end
end
