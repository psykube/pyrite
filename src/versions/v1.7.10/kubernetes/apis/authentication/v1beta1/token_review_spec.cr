# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # TokenReviewSpec is a description of the token authentication request.
  class Kubernetes::Apis::Authentication::V1beta1::TokenReviewSpec
    # Token is the opaque bearer token.
    property token : String | Nil

    ::YAML.mapping({
      token: {type: String, nilable: true, key: "token", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      token: {type: String, nilable: true, key: "token", getter: false, setter: false},
    }, true)

    def initialize(*, @token : String | Nil = nil)
    end
  end
end
