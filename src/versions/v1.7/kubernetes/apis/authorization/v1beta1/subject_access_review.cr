# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # SubjectAccessReview checks whether or not a user or group can perform an action.
  class Kubernetes::Apis::Authorization::V1beta1::SubjectAccessReview
    getter api_version : String = "authorization/v1beta1"
    getter kind : String = "SubjectAccessReview"
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec holds information about the request being evaluated
    property spec : Kubernetes::Apis::Authorization::V1beta1::SubjectAccessReviewSpec

    # Status is filled in by the server and indicates whether the request is allowed or not
    property status : Kubernetes::Apis::Authorization::V1beta1::SubjectAccessReviewStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "authorization/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "SubjectAccessReview", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Authorization::V1beta1::SubjectAccessReviewSpec, nilable: false, key: "spec", getter: false, setter: false},
      status:      {type: Kubernetes::Apis::Authorization::V1beta1::SubjectAccessReviewStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "authorization/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "SubjectAccessReview", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Authorization::V1beta1::SubjectAccessReviewSpec, nilable: false, key: "spec", getter: false, setter: false},
      status:      {type: Kubernetes::Apis::Authorization::V1beta1::SubjectAccessReviewStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @spec : Kubernetes::Apis::Authorization::V1beta1::SubjectAccessReviewSpec, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @status : Kubernetes::Apis::Authorization::V1beta1::SubjectAccessReviewStatus | Nil = nil)
    end

    # create a SubjectAccessReview
    def create(context : String | Nil = nil)
    end
  end

  module Resources::Authorization::V1beta1
    alias SubjectAccessReview = ::Pyrite::Kubernetes::Apis::Authorization::V1beta1::SubjectAccessReview
  end
end
