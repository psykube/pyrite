# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_2
  # TokenReview attempts to authenticate a token to a known user. Note: TokenReview requests may be cached by the webhook token authenticator plugin in the kube-apiserver.
  class Definitions::Kubernetes::Apis::Authentication::V1beta1::TokenReview
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta

    # Spec holds information about the request being evaluated
    property spec : Kubernetes::Apis::Authentication::V1beta1::TokenReviewSpec

    # Status is filled in by the server and indicates whether the request can be authenticated.
    property status : Kubernetes::Apis::Authentication::V1beta1::TokenReviewStatus

    YAML.mapping({
      api_version: {type: String, default: "TokenReview", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Authentication::V1beta1::TokenReviewSpec, nilable: false, key: spec, getter: false, setter: false},
      status:      {type: Kubernetes::Apis::Authentication::V1beta1::TokenReviewStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "TokenReview", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Authentication::V1beta1::TokenReviewSpec, nilable: false, key: spec, getter: false, setter: false},
      status:      {type: Kubernetes::Apis::Authentication::V1beta1::TokenReviewStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta = nil, @spec : Kubernetes::Apis::Authentication::V1beta1::TokenReviewSpec = nil, @status : Kubernetes::Apis::Authentication::V1beta1::TokenReviewStatus = nil)
      @api_version = "authentication/v1beta1"
      @kind = "TokenReview"
    end
  end

  module Resources::Authentication::V1beta1
    include Resource
    alias TokenReview = Definitions::Kubernetes::Apis::Authentication::V1beta1::TokenReview
  end
end