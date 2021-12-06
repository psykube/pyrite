# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # TokenRequestSpec contains client provided parameters of a token request.
  class Api::Authentication::V1::TokenRequestSpec < Kubernetes::Spec
    # Audiences are the intendend audiences of the token. A recipient of a token must identitfy themself with an identifier in the list of audiences of the token, and otherwise should reject the token. A token issued for multiple audiences may be used to authenticate against any of the audiences listed but implies a high degree of trust between the target audiences.
    @[::JSON::Field(key: "audiences")]
    @[::YAML::Field(key: "audiences")]
    property audiences : Array(String)

    # BoundObjectRef is a reference to an object that the token will be bound to. The token will only be valid for as long as the bound object exists. NOTE: The API server's TokenReview endpoint will validate the BoundObjectRef, but other audiences may not. Keep ExpirationSeconds small if you want prompt revocation.
    @[::JSON::Field(key: "boundObjectRef")]
    @[::YAML::Field(key: "boundObjectRef")]
    property bound_object_ref : Api::Authentication::V1::BoundObjectReference | Nil

    # ExpirationSeconds is the requested duration of validity of the request. The token issuer may return a token with a different validity duration so a client needs to check the 'expiration' field in a response.
    @[::JSON::Field(key: "expirationSeconds")]
    @[::YAML::Field(key: "expirationSeconds")]
    property expiration_seconds : Int32 | Nil

    def initialize(*, @audiences : Array, @bound_object_ref : Api::Authentication::V1::BoundObjectReference | Nil = nil, @expiration_seconds : Int32 | Nil = nil)
    end
  end
end
