# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Initializer is information about an initializer that has not yet completed.
  class Apimachinery::Apis::Meta::V1::Initializer
    # name of the process that is responsible for initializing this object.
    property name : String

    YAML.mapping({
      name: {type: String, nilable: false, key: "name"},
    }, true)

    JSON.mapping({
      name: {type: String, nilable: false, key: "name"},
    }, true)

    def initialize(*, @name : String | Nil = nil)
    end
  end
end
