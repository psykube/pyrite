# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # SelfSubjectAccessReview checks whether or the current user can perform an action.  Not filling in a spec.namespace means "in all namespaces".  Self is a special case, because users should always be able to check whether they can perform an action
  class Kubernetes::Apis::Authorization::V1::SelfSubjectAccessReview
    getter api_version : String = "authorization/v1"
    getter kind : String = "SelfSubjectAccessReview"
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec holds information about the request being evaluated.  user and groups must be empty
    property spec : Kubernetes::Apis::Authorization::V1::SelfSubjectAccessReviewSpec

    # Status is filled in by the server and indicates whether the request is allowed or not
    property status : Kubernetes::Apis::Authorization::V1::SubjectAccessReviewStatus | Nil

    YAML.mapping({
      api_version: {type: String, default: "authorization/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "SelfSubjectAccessReview", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata"},
      spec:        {type: Kubernetes::Apis::Authorization::V1::SelfSubjectAccessReviewSpec, nilable: false, key: "spec"},
      status:      {type: Kubernetes::Apis::Authorization::V1::SubjectAccessReviewStatus, nilable: true, key: "status"},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "authorization/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "SelfSubjectAccessReview", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata"},
      spec:        {type: Kubernetes::Apis::Authorization::V1::SelfSubjectAccessReviewSpec, nilable: false, key: "spec"},
      status:      {type: Kubernetes::Apis::Authorization::V1::SubjectAccessReviewStatus, nilable: true, key: "status"},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Apis::Authorization::V1::SelfSubjectAccessReviewSpec | Nil = nil, @status : Kubernetes::Apis::Authorization::V1::SubjectAccessReviewStatus | Nil = nil)
    end
  end

  module Resources::Authorization::V1
    alias SelfSubjectAccessReview = Kubernetes::Apis::Authorization::V1::SelfSubjectAccessReview
  end
end
