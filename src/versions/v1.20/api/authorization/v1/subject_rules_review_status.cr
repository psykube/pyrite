# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # SubjectRulesReviewStatus contains the result of a rules check. This check can be incomplete depending on the set of authorizers the server is configured with and any errors experienced during evaluation. Because authorization rules are additive, if a rule appears in a list it's safe to assume the subject has that permission, even if that list is incomplete.
  class Api::Authorization::V1::SubjectRulesReviewStatus < Kubernetes::Spec
    # EvaluationError can appear in combination with Rules. It indicates an error occurred during rule evaluation, such as an authorizer that doesn't support rule evaluation, and that ResourceRules [and/or NonResourceRules may be incomplete.](and/or NonResourceRules may be incomplete.)
    @[::JSON::Field(key: "evaluationError")]
    @[::YAML::Field(key: "evaluationError")]
    property evaluation_error : String | Nil

    # Incomplete is true when the rules returned by this call are incomplete. This is most commonly encountered when an authorizer, such as an external authorizer, doesn't support rules evaluation.
    @[::JSON::Field(key: "incomplete")]
    @[::YAML::Field(key: "incomplete")]
    property incomplete : Bool

    # NonResourceRules is the list of actions the subject is allowed to perform on non-resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
    @[::JSON::Field(key: "nonResourceRules")]
    @[::YAML::Field(key: "nonResourceRules")]
    property non_resource_rules : Array(Api::Authorization::V1::NonResourceRule)

    # ResourceRules is the list of actions the subject is allowed to perform on resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
    @[::JSON::Field(key: "resourceRules")]
    @[::YAML::Field(key: "resourceRules")]
    property resource_rules : Array(Api::Authorization::V1::ResourceRule)

    def initialize(*, @evaluation_error : String | Nil = nil, @incomplete : Bool, @non_resource_rules : Array, @resource_rules : Array)
    end
  end
end
