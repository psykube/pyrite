# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ConfigMapEnvSource selects a ConfigMap to populate the environment variables with.
  #
  # The contents of the target ConfigMap's Data field will represent the key-value pairs as environment variables.
  class Api::Core::V1::ConfigMapEnvSource < Kubernetes::Spec
    # Name of the referent. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names)
    @[::JSON::Field(key: "name")]
    @[::YAML::Field(key: "name")]
    property name : String | Nil

    # Specify whether the ConfigMap must be defined
    @[::JSON::Field(key: "optional")]
    @[::YAML::Field(key: "optional")]
    property optional : Bool | Nil

    def initialize(*, @name : String | Nil = nil, @optional : Bool | Nil = nil)
    end
  end
end
