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

    ::YAML.mapping({
      container_name: {type: String, nilable: true, key: "containerName", getter: false, setter: false},
      divisor:        {type: Int32, nilable: true, key: "divisor", getter: false, setter: false},
      resource:       {type: String, nilable: false, key: "resource", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      container_name: {type: String, nilable: true, key: "containerName", getter: false, setter: false},
      divisor:        {type: Int32, nilable: true, key: "divisor", getter: false, setter: false},
      resource:       {type: String, nilable: false, key: "resource", getter: false, setter: false},
    }, true)

    def initialize(*, @resource : String, @container_name : String | Nil = nil, @divisor : Int32 | Nil = nil)
    end
  end
end
