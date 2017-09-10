# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # SecretEnvSource selects a Secret to populate the environment variables with.
  #
  # The contents of the target Secret's Data field will represent the key-value pairs as environment variables.
  class Kubernetes::Api::V1::SecretEnvSource
    # Name of the referent. More info: [http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)
    property name : String | Nil

    # Specify whether the Secret must be defined
    property optional : Bool | Nil

    YAML.mapping({
      name:     {type: String, nilable: true, key: "name", getter: false, setter: false},
      optional: {type: Bool, nilable: true, key: "optional", getter: false, setter: false},
    }, true)

    JSON.mapping({
      name:     {type: String, nilable: true, key: "name", getter: false, setter: false},
      optional: {type: Bool, nilable: true, key: "optional", getter: false, setter: false},
    }, true)

    def initialize(*, @name : String | Nil = nil, @optional : Bool | Nil = nil)
    end
  end
end
