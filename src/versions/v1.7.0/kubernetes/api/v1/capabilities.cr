# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Adds and removes POSIX capabilities from running containers.
  class Kubernetes::Api::V1::Capabilities
    # Added capabilities
    property add : Array(String) | Nil

    # Removed capabilities
    property drop : Array(String) | Nil

    YAML.mapping({
      add:  {type: Array(String), nilable: true, key: "add"},
      drop: {type: Array(String), nilable: true, key: "drop"},
    }, true)

    JSON.mapping({
      add:  {type: Array(String), nilable: true, key: "add"},
      drop: {type: Array(String), nilable: true, key: "drop"},
    }, true)

    def initialize(*, @add : Array | Nil = nil, @drop : Array | Nil = nil)
    end
  end
end
