# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ResourceFieldSelector represents container resources (cpu, memory) and their output format
  class Kubernetes::Api::V1::ResourceFieldSelector
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Container name: required for volumes, optional for env vars
    @[JSON::Field(key: "containerName")]
    @[YAML::Field(key: "containerName")]
    property container_name : String | Nil

    # Specifies the output format of the exposed resources, defaults to "1"
    @[JSON::Field(key: "divisor")]
    @[YAML::Field(key: "divisor")]
    property divisor : Int32 | Nil

    # Required: resource to select
    @[JSON::Field(key: "resource")]
    @[YAML::Field(key: "resource")]
    property resource : String

    def initialize(*, @container_name : String | Nil = nil, @divisor : Int32 | Nil = nil, @resource : String)
    end
  end
end
