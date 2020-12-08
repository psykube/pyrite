# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ConfigMapEnvSource selects a ConfigMap to populate the environment variables with.
  #
  # The contents of the target ConfigMap's Data field will represent the key-value pairs as environment variables.
  class Api::Core::V1::ConfigMapEnvSource
    # Name of the referent. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names)
    property name : String | Nil

    # Specify whether the ConfigMap must be defined
    property optional : Bool | Nil

    ::YAML.mapping({
      name:     {type: String, nilable: true, key: "name", getter: false, setter: false},
      optional: {type: Bool, nilable: true, key: "optional", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      name:     {type: String, nilable: true, key: "name", getter: false, setter: false},
      optional: {type: Bool, nilable: true, key: "optional", getter: false, setter: false},
    }, true)

    def initialize(*, @name : String | Nil = nil, @optional : Bool | Nil = nil)
    end
  end
end
