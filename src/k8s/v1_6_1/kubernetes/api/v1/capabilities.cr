# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# Adds and removes POSIX capabilities from running containers.
class K8S::V1_6_1::Kubernetes::Api::V1::Capabilities
  # Added capabilities
  property add : Array(String)?

  # Removed capabilities
  property drop : Array(String)?

  YAML.mapping({add:  {type: Array(String), nilable: true, key: add, getter: false, setter: false},
                drop: {type: Array(String), nilable: true, key: drop, getter: false, setter: false}}, true)

  JSON.mapping({add:  {type: Array(String), nilable: true, key: add, getter: false, setter: false},
                drop: {type: Array(String), nilable: true, key: drop, getter: false, setter: false}}, true)

  def initialize(@add = nil, @drop = nil)
  end
end
