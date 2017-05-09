# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_2
  # A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.
  class Definitions::Unversioned::LabelSelectorRequirement
    # key is the label key that the selector applies to.
    property key : String

    # operator represents a key's relationship to a set of values. Valid operators ard In, NotIn, Exists and DoesNotExist.
    property operator : String

    # values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.
    property values : Array(String)?

    YAML.mapping({key:      {type: String, nilable: false, key: key, getter: false, setter: false},
                  operator: {type: String, nilable: false, key: operator, getter: false, setter: false},
                  values:   {type: Array(String), nilable: true, key: values, getter: false, setter: false}}, true)

    JSON.mapping({key:      {type: String, nilable: false, key: key, getter: false, setter: false},
                  operator: {type: String, nilable: false, key: operator, getter: false, setter: false},
                  values:   {type: Array(String), nilable: true, key: values, getter: false, setter: false}}, true)

    def initialize(@key : String? = nil, @operator : String? = nil, @values : Array? = nil)
    end
  end
end
