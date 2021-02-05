# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ConfigMapEnvSource selects a ConfigMap to populate the environment variables with.
  #
  # The contents of the target ConfigMap's Data field will represent the key-value pairs as environment variables.
  class Kubernetes::Api::V1::ConfigMapEnvSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Name of the referent. More info: [http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)
    @[JSON::Field(key: "name")]
    @[YAML::Field(key: "name")]
    property name : String | Nil

    # Specify whether the ConfigMap must be defined
    @[JSON::Field(key: "optional")]
    @[YAML::Field(key: "optional")]
    property optional : Bool | Nil

    def initialize(*, @name : String | Nil = nil, @optional : Bool | Nil = nil)
    end
  end
end
