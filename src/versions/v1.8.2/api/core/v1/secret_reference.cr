# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
  class Api::Core::V1::SecretReference
    # Name is unique within a namespace to reference a secret resource.
    property name : String | Nil

    # Namespace defines the space within which the secret name must be unique.
    property namespace : String | Nil

    YAML.mapping({
      name:      {type: String, nilable: true, key: "name", getter: false, setter: false},
      namespace: {type: String, nilable: true, key: "namespace", getter: false, setter: false},
    }, true)

    JSON.mapping({
      name:      {type: String, nilable: true, key: "name", getter: false, setter: false},
      namespace: {type: String, nilable: true, key: "namespace", getter: false, setter: false},
    }, true)

    def initialize(*, @name : String | Nil = nil, @namespace : String | Nil = nil)
    end
  end
end
