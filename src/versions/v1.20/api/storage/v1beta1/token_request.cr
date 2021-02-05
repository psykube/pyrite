# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # TokenRequest contains parameters of a service account token.
  class Api::Storage::V1beta1::TokenRequest
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Audience is the intended audience of the token in "TokenRequestSpec". It will default to the audiences of kube apiserver.
    @[JSON::Field(key: "audience")]
    @[YAML::Field(key: "audience")]
    property audience : String

    # ExpirationSeconds is the duration of validity of the token in "TokenRequestSpec". It has the same default value of "ExpirationSeconds" in "TokenRequestSpec"
    @[JSON::Field(key: "expirationSeconds")]
    @[YAML::Field(key: "expirationSeconds")]
    property expiration_seconds : Int32 | Nil

    def initialize(*, @audience : String, @expiration_seconds : Int32 | Nil = nil)
    end
  end
end
