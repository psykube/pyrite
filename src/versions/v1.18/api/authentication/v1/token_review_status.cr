# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # TokenReviewStatus is the result of the token authentication request.
  class Api::Authentication::V1::TokenReviewStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Audiences are audience identifiers chosen by the authenticator that are compatible with both the TokenReview and token. An identifier is any identifier in the intersection of the TokenReviewSpec audiences and the token's audiences. A client of the TokenReview API that sets the spec.audiences field should validate that a compatible audience identifier is returned in the status.audiences field to ensure that the TokenReview server is audience aware. If a TokenReview returns an empty status.audience field where status.authenticated is "true", the token is valid against the audience of the Kubernetes API server.
    @[::JSON::Field(key: "audiences")]
    @[::YAML::Field(key: "audiences")]
    property audiences : Array(String) | Nil

    # Authenticated indicates that the token was associated with a known user.
    @[::JSON::Field(key: "authenticated")]
    @[::YAML::Field(key: "authenticated")]
    property authenticated : Bool | Nil

    # Error indicates that the token couldn't be checked
    @[::JSON::Field(key: "error")]
    @[::YAML::Field(key: "error")]
    property error : String | Nil

    # User is the UserInfo associated with the provided token.
    @[::JSON::Field(key: "user")]
    @[::YAML::Field(key: "user")]
    property user : Api::Authentication::V1::UserInfo | Nil

    def initialize(*, @audiences : Array | Nil = nil, @authenticated : Bool | Nil = nil, @error : String | Nil = nil, @user : Api::Authentication::V1::UserInfo | Nil = nil)
    end
  end
end
