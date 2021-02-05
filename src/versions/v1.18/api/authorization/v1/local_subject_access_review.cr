# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # LocalSubjectAccessReview checks whether or not a user or group can perform an action in a given namespace. Having a namespace scoped resource makes it much easier to grant namespace scoped policy that includes permissions checking.
  class Api::Authorization::V1::LocalSubjectAccessReview
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion", converter: ::Pyrite::StringChecker.new("authorization/v1"))]
    @[::YAML::Field(key: "apiVersion", converter: ::Pyrite::StringChecker.new("authorization/v1"))]
    # The API and version we are accessing.
    getter api_version : String = "authorization/v1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "LocalSubjectAccessReview"
    @[::JSON::Field(key: "metadata")]
    @[::YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec holds information about the request being evaluated.  spec.namespace must be equal to the namespace you made the request against.  If empty, it is defaulted.
    @[::JSON::Field(key: "spec")]
    @[::YAML::Field(key: "spec")]
    property spec : Api::Authorization::V1::SubjectAccessReviewSpec

    # Status is filled in by the server and indicates whether the request is allowed or not
    @[::JSON::Field(key: "status")]
    @[::YAML::Field(key: "status")]
    property status : Api::Authorization::V1::SubjectAccessReviewStatus | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Authorization::V1::SubjectAccessReviewSpec, @status : Api::Authorization::V1::SubjectAccessReviewStatus | Nil = nil)
    end
  end

  module Resources::Authorization::V1
    alias LocalSubjectAccessReview = ::Pyrite::Api::Authorization::V1::LocalSubjectAccessReview
  end
end
