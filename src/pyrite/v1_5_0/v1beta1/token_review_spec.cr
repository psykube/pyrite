# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_0
  # TokenReviewSpec is a description of the token authentication request.
  class Definitions::V1beta1::TokenReviewSpec
    # Token is the opaque bearer token.
    property token : String?

    YAML.mapping({token: {type: String, nilable: true, key: token, getter: false, setter: false}}, true)

    JSON.mapping({token: {type: String, nilable: true, key: token, getter: false, setter: false}}, true)

    def initialize(@token : String? = nil)
    end
  end
end
