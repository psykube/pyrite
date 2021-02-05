# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Preconditions must be fulfilled before an operation (update, delete, etc.) is carried out.
  class Apimachinery::Apis::Meta::V1::Preconditions
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Specifies the target UID.
    @[::JSON::Field(key: "uid")]
    @[::YAML::Field(key: "uid")]
    property uid : String | Nil

    def initialize(*, @uid : String | Nil = nil)
    end
  end
end
