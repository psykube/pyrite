# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion
    # Name is the version name, e.g. “v1”, “v2beta1”, etc.
    property name : String

    # Served is a flag [enabling/disabling this version from being served via REST APIs](enabling/disabling this version from being served via REST APIs)
    property served : Bool

    # Storage flags the version as storage version. There must be exactly one flagged as storage version.
    property storage : Bool

    ::YAML.mapping({
      name:    {type: String, nilable: false, key: "name", getter: false, setter: false},
      served:  {type: Bool, nilable: false, key: "served", getter: false, setter: false},
      storage: {type: Bool, nilable: false, key: "storage", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      name:    {type: String, nilable: false, key: "name", getter: false, setter: false},
      served:  {type: Bool, nilable: false, key: "served", getter: false, setter: false},
      storage: {type: Bool, nilable: false, key: "storage", getter: false, setter: false},
    }, true)

    def initialize(*, @name : String, @served : Bool, @storage : Bool)
    end
  end
end
