# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # SubjectAccessReviewStatus
  class Kubernetes::Apis::Authorization::V1::SubjectAccessReviewStatus < Kubernetes::Spec
    # Allowed is required.  True if the action would be allowed, false otherwise.
    @[::JSON::Field(key: "allowed")]
    @[::YAML::Field(key: "allowed")]
    property allowed : Bool

    # EvaluationError is an indication that some error occurred during the authorization check. It is entirely possible to get an error and be able to continue determine authorization status in spite of it. For instance, RBAC can be missing a role, but enough roles are still present and bound to reason about the request.
    @[::JSON::Field(key: "evaluationError")]
    @[::YAML::Field(key: "evaluationError")]
    property evaluation_error : String | Nil

    # Reason is optional.  It indicates why a request was allowed or denied.
    @[::JSON::Field(key: "reason")]
    @[::YAML::Field(key: "reason")]
    property reason : String | Nil

    def initialize(*, @allowed : Bool, @evaluation_error : String | Nil = nil, @reason : String | Nil = nil)
    end
  end
end
