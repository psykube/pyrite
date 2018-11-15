# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # A topology selector requirement is a selector that matches given label. This is an alpha feature and may change in the future.
  class Api::Core::V1::TopologySelectorLabelRequirement
    # The label key that the selector applies to.
    property key : String

    # An array of string values. One value must match the label to be selected. Each entry in Values is ORed.
    property values : Array(String)

    ::YAML.mapping({
      key:    {type: String, nilable: false, key: "key", getter: false, setter: false},
      values: {type: Array(String), nilable: false, key: "values", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      key:    {type: String, nilable: false, key: "key", getter: false, setter: false},
      values: {type: Array(String), nilable: false, key: "values", getter: false, setter: false},
    }, true)

    def initialize(*, @key : String, @values : Array)
    end
  end
end
