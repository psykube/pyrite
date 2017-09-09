# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ResourceFieldSelector represents container resources (cpu, memory) and their output format
  class Kubernetes::Api::V1::ResourceFieldSelector
    # Container name: required for volumes, optional for env vars
    property container_name : String | Nil

    # Specifies the output format of the exposed resources, defaults to "1"
    property divisor : Int32 | Nil

    # Required: resource to select
    property resource : String

    YAML.mapping({
      container_name: {type: String, nilable: true, key: "containerName"},
      divisor:        {type: Int32, nilable: true, key: "divisor"},
      resource:       {type: String, nilable: false, key: "resource"},
    }, true)

    JSON.mapping({
      container_name: {type: String, nilable: true, key: "containerName"},
      divisor:        {type: Int32, nilable: true, key: "divisor"},
      resource:       {type: String, nilable: false, key: "resource"},
    }, true)

    def initialize(*, @container_name : String | Nil = nil, @divisor : Int32 | Nil = nil, @resource : String | Nil = nil)
    end
  end
end
