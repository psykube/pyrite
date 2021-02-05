# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # LocalObjectReference contains enough information to let you locate the referenced object inside the same namespace.
  class Api::Core::V1::LocalObjectReference
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Name of the referent. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names)
    @[::JSON::Field(key: "name")]
    @[::YAML::Field(key: "name")]
    property name : String | Nil

    def initialize(*, @name : String | Nil = nil)
    end
  end
end
