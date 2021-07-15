# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.
  class Apimachinery::Apis::Meta::V1::LabelSelectorRequirement < Kubernetes::Spec
    # key is the label key that the selector applies to.
    @[::JSON::Field(key: "key")]
    @[::YAML::Field(key: "key")]
    property key : String

    # operator represents a key's relationship to a set of values. Valid operators ard In, NotIn, Exists and DoesNotExist.
    @[::JSON::Field(key: "operator")]
    @[::YAML::Field(key: "operator")]
    property operator : String

    # values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.
    @[::JSON::Field(key: "values")]
    @[::YAML::Field(key: "values")]
    property values : Array(String) | Nil

    def initialize(*, @key : String, @operator : String, @values : Array | Nil = nil)
    end
  end
end
