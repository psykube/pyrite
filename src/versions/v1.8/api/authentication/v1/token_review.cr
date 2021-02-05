# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # TokenReview attempts to authenticate a token to a known user. Note: TokenReview requests may be cached by the webhook token authenticator plugin in the kube-apiserver.
  class Api::Authentication::V1::TokenReview
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String = "authentication/v1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "TokenReview"
    @[::JSON::Field(key: "metadata")]
    @[::YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec holds information about the request being evaluated
    @[::JSON::Field(key: "spec")]
    @[::YAML::Field(key: "spec")]
    property spec : Api::Authentication::V1::TokenReviewSpec

    # Status is filled in by the server and indicates whether the request can be authenticated.
    @[::JSON::Field(key: "status")]
    @[::YAML::Field(key: "status")]
    property status : Api::Authentication::V1::TokenReviewStatus | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Authentication::V1::TokenReviewSpec, @status : Api::Authentication::V1::TokenReviewStatus | Nil = nil)
    end
  end

  module Resources::Authentication::V1
    alias TokenReview = ::Pyrite::Api::Authentication::V1::TokenReview
  end
end
