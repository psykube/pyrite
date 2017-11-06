# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Preconditions must be fulfilled before an operation (update, delete, etc.) is carried out.
  class Apimachinery::Apis::Meta::V1::Preconditions
    # Specifies the target UID.
    property uid : String | Nil

    ::YAML.mapping({
      uid: {type: String, nilable: true, key: "uid", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      uid: {type: String, nilable: true, key: "uid", getter: false, setter: false},
    }, true)

    def initialize(*, @uid : String | Nil = nil)
    end
  end
end
