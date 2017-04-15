require "yaml"
require "json"

# SecretKeySelector selects a key of a Secret.
class K8S::V1_6_1::Kubernetes::Api::V1::SecretKeySelector
  # The key of the secret to select from. Must be a valid secret key.
  property key : String

  # Name of the referent.More info: http://kubernetes.io/docs/user-guide/identifiers#names
  property name : String?

  # Specify whether the Secret or it's key must be defined
  property optional : Bool?

  YAML.mapping({key:      {type: String, nilable: false, key: key, getter: false, setter: false},
                name:     {type: String, nilable: true, key: name, getter: false, setter: false},
                optional: {type: Bool, nilable: true, key: optional, getter: false, setter: false}}, true)

  JSON.mapping({key:      {type: String, nilable: false, key: key, getter: false, setter: false},
                name:     {type: String, nilable: true, key: name, getter: false, setter: false},
                optional: {type: Bool, nilable: true, key: optional, getter: false, setter: false}}, true)

  def initialize(@key, @name = nil, @optional = nil)
  end
end
