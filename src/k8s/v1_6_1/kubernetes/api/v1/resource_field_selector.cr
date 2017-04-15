require "yaml"
require "json"

# ResourceFieldSelector represents container resources (cpu, memory) and their output format
class K8S::V1_6_1::Kubernetes::Api::V1::ResourceFieldSelector
  # Container name: required for volumes, optional for env vars
  property container_name : String?

  # Specifies the output format of the exposed resources, defaults to "1"
  property divisor : ::K8S::V1_6_1::Apimachinery::Api::Resource::Quantity

  # Required: resource to select
  property resource : String

  YAML.mapping({container_name: {type: String, nilable: true, key: containerName, getter: false, setter: false},
                divisor:        {type: ::K8S::V1_6_1::Apimachinery::Api::Resource::Quantity, nilable: true, key: divisor, getter: false, setter: false},
                resource:       {type: String, nilable: false, key: resource, getter: false, setter: false}}, true)

  JSON.mapping({container_name: {type: String, nilable: true, key: containerName, getter: false, setter: false},
                divisor:        {type: ::K8S::V1_6_1::Apimachinery::Api::Resource::Quantity, nilable: true, key: divisor, getter: false, setter: false},
                resource:       {type: String, nilable: false, key: resource, getter: false, setter: false}}, true)

  def initialize(@resource, @container_name = nil, @divisor = nil)
  end
end
