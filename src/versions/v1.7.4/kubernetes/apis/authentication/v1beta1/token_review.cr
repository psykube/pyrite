# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # TokenReview attempts to authenticate a token to a known user. Note: TokenReview requests may be cached by the webhook token authenticator plugin in the kube-apiserver.
  class Kubernetes::Apis::Authentication::V1beta1::TokenReview
    getter api_version : String = "authentication/v1beta1"
    getter kind : String = "TokenReview"
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec holds information about the request being evaluated
    property spec : Kubernetes::Apis::Authentication::V1beta1::TokenReviewSpec

    # Status is filled in by the server and indicates whether the request can be authenticated.
    property status : Kubernetes::Apis::Authentication::V1beta1::TokenReviewStatus | Nil

    YAML.mapping({
      api_version: {type: String, default: "authentication/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "TokenReview", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Authentication::V1beta1::TokenReviewSpec, nilable: false, key: "spec", getter: false, setter: false},
      status:      {type: Kubernetes::Apis::Authentication::V1beta1::TokenReviewStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "authentication/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "TokenReview", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Authentication::V1beta1::TokenReviewSpec, nilable: false, key: "spec", getter: false, setter: false},
      status:      {type: Kubernetes::Apis::Authentication::V1beta1::TokenReviewStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Apis::Authentication::V1beta1::TokenReviewSpec | Nil = nil, @status : Kubernetes::Apis::Authentication::V1beta1::TokenReviewStatus | Nil = nil)
    end
  end

  module Resources::Authentication::V1beta1
    alias TokenReview = Kubernetes::Apis::Authentication::V1beta1::TokenReview
  end
end
