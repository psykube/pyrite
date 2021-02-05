# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
  class Api::Core::V1::SecretReference
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Name is unique within a namespace to reference a secret resource.
    @[JSON::Field(key: "name")]
    @[YAML::Field(key: "name")]
    property name : String | Nil

    # Namespace defines the space within which the secret name must be unique.
    @[JSON::Field(key: "namespace")]
    @[YAML::Field(key: "namespace")]
    property namespace : String | Nil

    def initialize(*, @name : String | Nil = nil, @namespace : String | Nil = nil)
    end
  end
end
