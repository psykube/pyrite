# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Name is the version name, e.g. “v1”, “v2beta1”, etc.
    @[JSON::Field(key: "name")]
    @[YAML::Field(key: "name")]
    property name : String

    # Served is a flag [enabling/disabling this version from being served via REST APIs](enabling/disabling this version from being served via REST APIs)
    @[JSON::Field(key: "served")]
    @[YAML::Field(key: "served")]
    property served : Bool

    # Storage flags the version as storage version. There must be exactly one flagged as storage version.
    @[JSON::Field(key: "storage")]
    @[YAML::Field(key: "storage")]
    property storage : Bool

    def initialize(*, @name : String, @served : Bool, @storage : Bool)
    end
  end
end
