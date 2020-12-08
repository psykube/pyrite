# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # TokenRequestStatus is the result of a token request.
  class Api::Authentication::V1::TokenRequestStatus
    # ExpirationTimestamp is the time of expiration of the returned token.
    property expiration_timestamp : Time

    # Token is the opaque bearer token.
    property token : String

    ::YAML.mapping({
      expiration_timestamp: {type: Time, nilable: false, key: "expirationTimestamp", getter: false, setter: false},
      token:                {type: String, nilable: false, key: "token", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      expiration_timestamp: {type: Time, nilable: false, key: "expirationTimestamp", getter: false, setter: false},
      token:                {type: String, nilable: false, key: "token", getter: false, setter: false},
    }, true)

    def initialize(*, @expiration_timestamp : Time, @token : String)
    end
  end
end
