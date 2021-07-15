# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # SubjectAccessReviewStatus
  class Api::Authorization::V1beta1::SubjectAccessReviewStatus < Kubernetes::Spec
    # Allowed is required. True if the action would be allowed, false otherwise.
    @[::JSON::Field(key: "allowed")]
    @[::YAML::Field(key: "allowed")]
    property allowed : Bool

    # Denied is optional. True if the action would be denied, otherwise false. If both allowed is false and denied is false, then the authorizer has no opinion on whether to authorize the action. Denied may not be true if Allowed is true.
    @[::JSON::Field(key: "denied")]
    @[::YAML::Field(key: "denied")]
    property denied : Bool | Nil

    # EvaluationError is an indication that some error occurred during the authorization check. It is entirely possible to get an error and be able to continue determine authorization status in spite of it. For instance, RBAC can be missing a role, but enough roles are still present and bound to reason about the request.
    @[::JSON::Field(key: "evaluationError")]
    @[::YAML::Field(key: "evaluationError")]
    property evaluation_error : String | Nil

    # Reason is optional.  It indicates why a request was allowed or denied.
    @[::JSON::Field(key: "reason")]
    @[::YAML::Field(key: "reason")]
    property reason : String | Nil

    def initialize(*, @allowed : Bool, @denied : Bool | Nil = nil, @evaluation_error : String | Nil = nil, @reason : String | Nil = nil)
    end
  end
end
