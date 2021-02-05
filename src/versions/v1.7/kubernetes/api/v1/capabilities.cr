# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Adds and removes POSIX capabilities from running containers.
  class Kubernetes::Api::V1::Capabilities
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Added capabilities
    @[::JSON::Field(key: "add")]
    @[::YAML::Field(key: "add")]
    property add : Array(String) | Nil

    # Removed capabilities
    @[::JSON::Field(key: "drop")]
    @[::YAML::Field(key: "drop")]
    property drop : Array(String) | Nil

    def initialize(*, @add : Array | Nil = nil, @drop : Array | Nil = nil)
    end
  end
end
