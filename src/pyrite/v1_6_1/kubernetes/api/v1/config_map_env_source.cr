# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# ConfigMapEnvSource selects a ConfigMap to populate the environment variables with.
#
# The contents of the target ConfigMap's Data field will represent the key-value pairs as environment variables.
class Pyrite::V1_6_1::Kubernetes::Api::V1::ConfigMapEnvSource
  # Name of the referent. More info: [http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)
  property name : String?

  # Specify whether the ConfigMap must be defined
  property optional : Bool?

  YAML.mapping({name:     {type: String, nilable: true, key: name, getter: false, setter: false},
                optional: {type: Bool, nilable: true, key: optional, getter: false, setter: false}}, true)

  JSON.mapping({name:     {type: String, nilable: true, key: name, getter: false, setter: false},
                optional: {type: Bool, nilable: true, key: optional, getter: false, setter: false}}, true)

  def initialize(@name : String? = nil, @optional : Bool? = nil)
  end
end
