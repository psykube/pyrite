# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# An APIVersion represents a single concrete version of an object model.
class K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::APIVersion
  # Name of this version (e.g.'v1').
  property name : String?

  YAML.mapping({name: {type: String, nilable: true, key: name, getter: false, setter: false}}, true)

  JSON.mapping({name: {type: String, nilable: true, key: name, getter: false, setter: false}}, true)

  def initialize(@name = nil)
  end
end
