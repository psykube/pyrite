# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Initializer is information about an initializer that has not yet completed.
  class Apimachinery::Apis::Meta::V1::Initializer
    include ::JSON::Serializable
    include ::YAML::Serializable

    # name of the process that is responsible for initializing this object.
    @[JSON::Field(key: "name")]
    @[YAML::Field(key: "name")]
    property name : String

    def initialize(*, @name : String)
    end
  end
end
