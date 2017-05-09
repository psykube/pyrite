# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_1
  # TokenReview attempts to authenticate a token to a known user. Note: TokenReview requests may be cached by the webhook token authenticator plugin in the kube-apiserver.
  class Definitions::V1beta1::TokenReview
    property metadata : V1::ObjectMeta

    # Spec holds information about the request being evaluated
    property spec : V1beta1::TokenReviewSpec

    # Status is filled in by the server and indicates whether the request can be authenticated.
    property status : V1beta1::TokenReviewStatus

    YAML.mapping({metadata: {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                  spec:     {type: V1beta1::TokenReviewSpec, nilable: false, key: spec, getter: false, setter: false},
                  status:   {type: V1beta1::TokenReviewStatus, nilable: true, key: status, getter: false, setter: false}}, true)

    JSON.mapping({metadata: {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                  spec:     {type: V1beta1::TokenReviewSpec, nilable: false, key: spec, getter: false, setter: false},
                  status:   {type: V1beta1::TokenReviewStatus, nilable: true, key: status, getter: false, setter: false}}, true)

    def initialize(@metadata : V1::ObjectMeta = nil, @spec : V1beta1::TokenReviewSpec = nil, @status : V1beta1::TokenReviewStatus = nil)
    end
  end
end
