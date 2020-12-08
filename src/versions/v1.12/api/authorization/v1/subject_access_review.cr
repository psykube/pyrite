# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # SubjectAccessReview checks whether or not a user or group can perform an action.
  class Api::Authorization::V1::SubjectAccessReview
    getter api_version : String = "authorization/v1"
    getter kind : String = "SubjectAccessReview"
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec holds information about the request being evaluated
    property spec : Api::Authorization::V1::SubjectAccessReviewSpec

    # Status is filled in by the server and indicates whether the request is allowed or not
    property status : Api::Authorization::V1::SubjectAccessReviewStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "authorization/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "SubjectAccessReview", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Authorization::V1::SubjectAccessReviewSpec, nilable: false, key: "spec", getter: false, setter: false},
      status:      {type: Api::Authorization::V1::SubjectAccessReviewStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "authorization/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "SubjectAccessReview", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Authorization::V1::SubjectAccessReviewSpec, nilable: false, key: "spec", getter: false, setter: false},
      status:      {type: Api::Authorization::V1::SubjectAccessReviewStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @spec : Api::Authorization::V1::SubjectAccessReviewSpec, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @status : Api::Authorization::V1::SubjectAccessReviewStatus | Nil = nil)
    end

    # create a SubjectAccessReview
    def create(context : String | Nil = nil, dry_run : String | Nil = nil, include_uninitialized : Bool | Nil = nil)
    end
  end

  module Resources::Authorization::V1
    alias SubjectAccessReview = ::Pyrite::Api::Authorization::V1::SubjectAccessReview
  end
end
