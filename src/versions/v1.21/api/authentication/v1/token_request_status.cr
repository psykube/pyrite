# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # TokenRequestStatus is the result of a token request.
  class Api::Authentication::V1::TokenRequestStatus < Kubernetes::Spec
    # ExpirationTimestamp is the time of expiration of the returned token.
    @[::JSON::Field(key: "expirationTimestamp")]
    @[::YAML::Field(key: "expirationTimestamp")]
    property expiration_timestamp : Time

    # Token is the opaque bearer token.
    @[::JSON::Field(key: "token")]
    @[::YAML::Field(key: "token")]
    property token : String

    def initialize(*, @expiration_timestamp : Time, @token : String)
    end
  end
end
