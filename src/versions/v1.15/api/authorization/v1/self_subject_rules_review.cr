# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # SelfSubjectRulesReview enumerates the set of actions the current user can perform within a namespace. The returned list of actions may be incomplete depending on the server's authorization mode, and any errors experienced during the evaluation. SelfSubjectRulesReview should be used by UIs to [show/hide actions, or to quickly let an end user reason about their permissions. It should NOT Be used by external systems to drive authorization decisions as this raises confused deputy, cache lifetime/revocation, and correctness concerns. SubjectAccessReview, and LocalAccessReview are the correct way to defer authorization decisions to the API server.](show/hide actions, or to quickly let an end user reason about their permissions. It should NOT Be used by external systems to drive authorization decisions as this raises confused deputy, cache lifetime/revocation, and correctness concerns. SubjectAccessReview, and LocalAccessReview are the correct way to defer authorization decisions to the API server.)
  class Api::Authorization::V1::SelfSubjectRulesReview
    getter api_version : String = "authorization/v1"
    getter kind : String = "SelfSubjectRulesReview"
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec holds information about the request being evaluated.
    property spec : Api::Authorization::V1::SelfSubjectRulesReviewSpec

    # Status is filled in by the server and indicates the set of actions a user can perform.
    property status : Api::Authorization::V1::SubjectRulesReviewStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "authorization/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "SelfSubjectRulesReview", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Authorization::V1::SelfSubjectRulesReviewSpec, nilable: false, key: "spec", getter: false, setter: false},
      status:      {type: Api::Authorization::V1::SubjectRulesReviewStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "authorization/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "SelfSubjectRulesReview", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Authorization::V1::SelfSubjectRulesReviewSpec, nilable: false, key: "spec", getter: false, setter: false},
      status:      {type: Api::Authorization::V1::SubjectRulesReviewStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @spec : Api::Authorization::V1::SelfSubjectRulesReviewSpec, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @status : Api::Authorization::V1::SubjectRulesReviewStatus | Nil = nil)
    end
  end

  module Resources::Authorization::V1
    alias SelfSubjectRulesReview = ::Pyrite::Api::Authorization::V1::SelfSubjectRulesReview
  end
end
