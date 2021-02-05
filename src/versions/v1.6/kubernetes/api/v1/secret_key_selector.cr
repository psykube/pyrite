# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # SecretKeySelector selects a key of a Secret.
  class Kubernetes::Api::V1::SecretKeySelector
    include ::JSON::Serializable
    include ::YAML::Serializable

    # The key of the secret to select from.  Must be a valid secret key.
    @[::JSON::Field(key: "key")]
    @[::YAML::Field(key: "key")]
    property key : String

    # Name of the referent. More info: [http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)
    @[::JSON::Field(key: "name")]
    @[::YAML::Field(key: "name")]
    property name : String | Nil

    # Specify whether the Secret or it's key must be defined
    @[::JSON::Field(key: "optional")]
    @[::YAML::Field(key: "optional")]
    property optional : Bool | Nil

    def initialize(*, @key : String, @name : String | Nil = nil, @optional : Bool | Nil = nil)
    end
  end
end
