# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # TokenReviewSpec is a description of the token authentication request.
  class Api::Authentication::V1::TokenReviewSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Token is the opaque bearer token.
    @[JSON::Field(key: "token")]
    @[YAML::Field(key: "token")]
    property token : String | Nil

    def initialize(*, @token : String | Nil = nil)
    end
  end
end
