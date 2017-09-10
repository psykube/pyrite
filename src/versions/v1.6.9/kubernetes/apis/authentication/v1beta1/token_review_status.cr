# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # TokenReviewStatus is the result of the token authentication request.
  class Kubernetes::Apis::Authentication::V1beta1::TokenReviewStatus
    # Authenticated indicates that the token was associated with a known user.
    property authenticated : Bool | Nil

    # Error indicates that the token couldn't be checked
    property error : String | Nil

    # User is the UserInfo associated with the provided token.
    property user : Kubernetes::Apis::Authentication::V1beta1::UserInfo | Nil

    YAML.mapping({
      authenticated: {type: Bool, nilable: true, key: "authenticated", getter: false, setter: false},
      error:         {type: String, nilable: true, key: "error", getter: false, setter: false},
      user:          {type: Kubernetes::Apis::Authentication::V1beta1::UserInfo, nilable: true, key: "user", getter: false, setter: false},
    }, true)

    JSON.mapping({
      authenticated: {type: Bool, nilable: true, key: "authenticated", getter: false, setter: false},
      error:         {type: String, nilable: true, key: "error", getter: false, setter: false},
      user:          {type: Kubernetes::Apis::Authentication::V1beta1::UserInfo, nilable: true, key: "user", getter: false, setter: false},
    }, true)

    def initialize(*, @authenticated : Bool | Nil = nil, @error : String | Nil = nil, @user : Kubernetes::Apis::Authentication::V1beta1::UserInfo | Nil = nil)
    end
  end
end
