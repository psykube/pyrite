# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.
  class Api::Core::V1::NodeSelectorRequirement < Kubernetes::Spec
    # The label key that the selector applies to.
    @[::JSON::Field(key: "key")]
    @[::YAML::Field(key: "key")]
    property key : String

    # Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.
    @[::JSON::Field(key: "operator")]
    @[::YAML::Field(key: "operator")]
    property operator : String

    # An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.
    @[::JSON::Field(key: "values")]
    @[::YAML::Field(key: "values")]
    property values : Array(String) | Nil

    def initialize(*, @key : String, @operator : String, @values : Array | Nil = nil)
    end
  end
end
