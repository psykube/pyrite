# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # TokenReviewStatus is the result of the token authentication request.
  class Kubernetes::Apis::Authentication::V1beta1::TokenReviewStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

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
    property user : Kubernetes::Apis::Authentication::V1beta1::UserInfo | Nil

    def initialize(*, @authenticated : Bool | Nil = nil, @error : String | Nil = nil, @user : Kubernetes::Apis::Authentication::V1beta1::UserInfo | Nil = nil)
    end
  end
end
