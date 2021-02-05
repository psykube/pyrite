# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # SelfSubjectAccessReview checks whether or the current user can perform an action.  Not filling in a spec.namespace means "in all namespaces".  Self is a special case, because users should always be able to check whether they can perform an action
  class Kubernetes::Apis::Authorization::V1beta1::SelfSubjectAccessReview
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String = "authorization/v1beta1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "SelfSubjectAccessReview"
    @[::JSON::Field(key: "metadata")]
    @[::YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec holds information about the request being evaluated.  user and groups must be empty
    @[::JSON::Field(key: "spec")]
    @[::YAML::Field(key: "spec")]
    property spec : Kubernetes::Apis::Authorization::V1beta1::SelfSubjectAccessReviewSpec

    # Status is filled in by the server and indicates whether the request is allowed or not
    @[::JSON::Field(key: "status")]
    @[::YAML::Field(key: "status")]
    property status : Kubernetes::Apis::Authorization::V1beta1::SubjectAccessReviewStatus | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Apis::Authorization::V1beta1::SelfSubjectAccessReviewSpec, @status : Kubernetes::Apis::Authorization::V1beta1::SubjectAccessReviewStatus | Nil = nil)
    end
  end

  module Resources::Authorization::V1beta1
    alias SelfSubjectAccessReview = ::Pyrite::Kubernetes::Apis::Authorization::V1beta1::SelfSubjectAccessReview
  end
end
