# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # SecretKeySelector selects a key of a Secret.
  class Kubernetes::Api::V1::SecretKeySelector
    # The key of the secret to select from.  Must be a valid secret key.
    property key : String

    # Name of the referent. More info: [http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)
    property name : String | Nil

    # Specify whether the Secret or it's key must be defined
    property optional : Bool | Nil

    YAML.mapping({
      key:      {type: String, nilable: false, key: "key"},
      name:     {type: String, nilable: true, key: "name"},
      optional: {type: Bool, nilable: true, key: "optional"},
    }, true)

    JSON.mapping({
      key:      {type: String, nilable: false, key: "key"},
      name:     {type: String, nilable: true, key: "name"},
      optional: {type: Bool, nilable: true, key: "optional"},
    }, true)

    def initialize(*, @key : String | Nil = nil, @name : String | Nil = nil, @optional : Bool | Nil = nil)
    end
  end
end
