# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # TokenReviewSpec is a description of the token authentication request.
  class Api::Authentication::V1beta1::TokenReviewSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Audiences is a list of the identifiers that the resource server presented with the token identifies as. Audience-aware token authenticators will verify that the token was intended for at least one of the audiences in this list. If no audiences are provided, the audience will default to the audience of the Kubernetes apiserver.
    @[JSON::Field(key: "audiences")]
    @[YAML::Field(key: "audiences")]
    property audiences : Array(String) | Nil

    # Token is the opaque bearer token.
    @[JSON::Field(key: "token")]
    @[YAML::Field(key: "token")]
    property token : String | Nil

    def initialize(*, @audiences : Array | Nil = nil, @token : String | Nil = nil)
    end
  end
end
