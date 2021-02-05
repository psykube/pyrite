# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Selects a key from a ConfigMap.
  class Api::Core::V1::ConfigMapKeySelector
    include ::JSON::Serializable
    include ::YAML::Serializable

    # The key to select.
    @[JSON::Field(key: "key")]
    @[YAML::Field(key: "key")]
    property key : String

    # Name of the referent. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names)
    @[JSON::Field(key: "name")]
    @[YAML::Field(key: "name")]
    property name : String | Nil

    # Specify whether the ConfigMap or it's key must be defined
    @[JSON::Field(key: "optional")]
    @[YAML::Field(key: "optional")]
    property optional : Bool | Nil

    def initialize(*, @key : String, @name : String | Nil = nil, @optional : Bool | Nil = nil)
    end
  end
end
