# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # TokenReviewStatus is the result of the token authentication request.
  class Api::Authentication::V1beta1::TokenReviewStatus
    # Audiences are audience identifiers chosen by the authenticator that are compatible with both the TokenReview and token. An identifier is any identifier in the intersection of the TokenReviewSpec audiences and the token's audiences. A client of the TokenReview API that sets the spec.audiences field should validate that a compatible audience identifier is returned in the status.audiences field to ensure that the TokenReview server is audience aware. If a TokenReview returns an empty status.audience field where status.authenticated is "true", the token is valid against the audience of the Kubernetes API server.
    property audiences : Array(String) | Nil

    # Authenticated indicates that the token was associated with a known user.
    property authenticated : Bool | Nil

    # Error indicates that the token couldn't be checked
    property error : String | Nil

    # User is the UserInfo associated with the provided token.
    property user : Api::Authentication::V1beta1::UserInfo | Nil

    ::YAML.mapping({
      audiences:     {type: Array(String), nilable: true, key: "audiences", getter: false, setter: false},
      authenticated: {type: Bool, nilable: true, key: "authenticated", getter: false, setter: false},
      error:         {type: String, nilable: true, key: "error", getter: false, setter: false},
      user:          {type: Api::Authentication::V1beta1::UserInfo, nilable: true, key: "user", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      audiences:     {type: Array(String), nilable: true, key: "audiences", getter: false, setter: false},
      authenticated: {type: Bool, nilable: true, key: "authenticated", getter: false, setter: false},
      error:         {type: String, nilable: true, key: "error", getter: false, setter: false},
      user:          {type: Api::Authentication::V1beta1::UserInfo, nilable: true, key: "user", getter: false, setter: false},
    }, true)

    def initialize(*, @audiences : Array | Nil = nil, @authenticated : Bool | Nil = nil, @error : String | Nil = nil, @user : Api::Authentication::V1beta1::UserInfo | Nil = nil)
    end
  end
end
