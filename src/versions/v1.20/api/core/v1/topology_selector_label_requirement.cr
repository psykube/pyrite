# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # A topology selector requirement is a selector that matches given label. This is an alpha feature and may change in the future.
  class Api::Core::V1::TopologySelectorLabelRequirement < Kubernetes::Spec
    # The label key that the selector applies to.
    @[::JSON::Field(key: "key")]
    @[::YAML::Field(key: "key")]
    property key : String

    # An array of string values. One value must match the label to be selected. Each entry in Values is ORed.
    @[::JSON::Field(key: "values")]
    @[::YAML::Field(key: "values")]
    property values : Array(String)

    def initialize(*, @key : String, @values : Array)
    end
  end
end
