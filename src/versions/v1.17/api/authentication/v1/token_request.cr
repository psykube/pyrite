# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # TokenRequest requests a token for a given service account.
  class Api::Authentication::V1::TokenRequest
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String = "authentication/v1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "TokenRequest"
    @[::JSON::Field(key: "metadata")]
    @[::YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    @[::JSON::Field(key: "spec")]
    @[::YAML::Field(key: "spec")]
    property spec : Api::Authentication::V1::TokenRequestSpec

    @[::JSON::Field(key: "status")]
    @[::YAML::Field(key: "status")]
    property status : Api::Authentication::V1::TokenRequestStatus | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Authentication::V1::TokenRequestSpec, @status : Api::Authentication::V1::TokenRequestStatus | Nil = nil)
    end
  end

  module Resources::Authentication::V1
    alias TokenRequest = ::Pyrite::Api::Authentication::V1::TokenRequest
  end
end
