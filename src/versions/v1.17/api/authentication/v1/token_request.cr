# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # TokenRequest requests a token for a given service account.
  class Api::Authentication::V1::TokenRequest
    getter api_version : String = "authentication/v1"
    getter kind : String = "TokenRequest"
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    property spec : Api::Authentication::V1::TokenRequestSpec

    property status : Api::Authentication::V1::TokenRequestStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "authentication/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "TokenRequest", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Authentication::V1::TokenRequestSpec, nilable: false, key: "spec", getter: false, setter: false},
      status:      {type: Api::Authentication::V1::TokenRequestStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "authentication/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "TokenRequest", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Authentication::V1::TokenRequestSpec, nilable: false, key: "spec", getter: false, setter: false},
      status:      {type: Api::Authentication::V1::TokenRequestStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @spec : Api::Authentication::V1::TokenRequestSpec, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @status : Api::Authentication::V1::TokenRequestStatus | Nil = nil)
    end

    # create token of a ServiceAccount
    def create_core_v1_service_account_token(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil)
    end
  end

  module Resources::Authentication::V1
    alias TokenRequest = ::Pyrite::Api::Authentication::V1::TokenRequest
  end
end
