# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # BoundObjectReference is a reference to an object that a token is bound to.
  class Api::Authentication::V1::BoundObjectReference
    include ::JSON::Serializable
    include ::YAML::Serializable

    # API version of the referent.
    @[JSON::Field(key: "apiVersion")]
    @[YAML::Field(key: "apiVersion")]
    property api_version : String | Nil

    # Kind of the referent. Valid kinds are 'Pod' and 'Secret'.
    @[JSON::Field(key: "kind")]
    @[YAML::Field(key: "kind")]
    property kind : String | Nil

    # Name of the referent.
    @[JSON::Field(key: "name")]
    @[YAML::Field(key: "name")]
    property name : String | Nil

    # UID of the referent.
    @[JSON::Field(key: "uid")]
    @[YAML::Field(key: "uid")]
    property uid : String | Nil

    def initialize(*, @api_version : String | Nil = nil, @kind : String | Nil = nil, @name : String | Nil = nil, @uid : String | Nil = nil)
    end
  end
end
