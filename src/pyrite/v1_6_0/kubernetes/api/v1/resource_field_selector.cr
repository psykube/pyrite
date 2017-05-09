# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_0
  # ResourceFieldSelector represents container resources (cpu, memory) and their output format
  class Definitions::Kubernetes::Api::V1::ResourceFieldSelector
    # Container name: required for volumes, optional for env vars
    property container_name : String?

    # Specifies the output format of the exposed resources, defaults to "1"
    property divisor : Apimachinery::Api::Resource::Quantity

    # Required: resource to select
    property resource : String

    YAML.mapping({container_name: {type: String, nilable: true, key: containerName, getter: false, setter: false},
                  divisor:        {type: Apimachinery::Api::Resource::Quantity, nilable: true, key: divisor, getter: false, setter: false},
                  resource:       {type: String, nilable: false, key: resource, getter: false, setter: false}}, true)

    JSON.mapping({container_name: {type: String, nilable: true, key: containerName, getter: false, setter: false},
                  divisor:        {type: Apimachinery::Api::Resource::Quantity, nilable: true, key: divisor, getter: false, setter: false},
                  resource:       {type: String, nilable: false, key: resource, getter: false, setter: false}}, true)

    def initialize(@container_name : String? = nil, @divisor : Apimachinery::Api::Resource::Quantity = nil, @resource : String? = nil)
    end
  end
end
