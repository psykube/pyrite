# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # EnvVar represents an environment variable present in a Container.
  class Api::Core::V1::EnvVar < Kubernetes::Spec
    # Name of the environment variable. Must be a C_IDENTIFIER.
    @[::JSON::Field(key: "name")]
    @[::YAML::Field(key: "name")]
    property name : String

    # Variable references $(VAR_NAME) are expanded using the previous defined environment variables in the container and any service environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to "".
    @[::JSON::Field(key: "value")]
    @[::YAML::Field(key: "value")]
    property value : String | Nil

    # Source for the environment variable's value. Cannot be used if value is not empty.
    @[::JSON::Field(key: "valueFrom")]
    @[::YAML::Field(key: "valueFrom")]
    property value_from : Api::Core::V1::EnvVarSource | Nil

    def initialize(*, @name : String, @value : String | Nil = nil, @value_from : Api::Core::V1::EnvVarSource | Nil = nil)
    end
  end
end
