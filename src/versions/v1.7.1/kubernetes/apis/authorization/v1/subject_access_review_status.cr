# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # SubjectAccessReviewStatus
  class Kubernetes::Apis::Authorization::V1::SubjectAccessReviewStatus
    # Allowed is required.  True if the action would be allowed, false otherwise.
    property allowed : Bool

    # EvaluationError is an indication that some error occurred during the authorization check. It is entirely possible to get an error and be able to continue determine authorization status in spite of it. For instance, RBAC can be missing a role, but enough roles are still present and bound to reason about the request.
    property evaluation_error : String | Nil

    # Reason is optional.  It indicates why a request was allowed or denied.
    property reason : String | Nil

    YAML.mapping({
      allowed:          {type: Bool, nilable: false, key: "allowed", getter: false, setter: false},
      evaluation_error: {type: String, nilable: true, key: "evaluationError", getter: false, setter: false},
      reason:           {type: String, nilable: true, key: "reason", getter: false, setter: false},
    }, true)

    JSON.mapping({
      allowed:          {type: Bool, nilable: false, key: "allowed", getter: false, setter: false},
      evaluation_error: {type: String, nilable: true, key: "evaluationError", getter: false, setter: false},
      reason:           {type: String, nilable: true, key: "reason", getter: false, setter: false},
    }, true)

    def initialize(*, @allowed : Bool | Nil = nil, @evaluation_error : String | Nil = nil, @reason : String | Nil = nil)
    end
  end
end
