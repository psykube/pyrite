# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # SubjectRulesReviewStatus contains the result of a rules check. This check can be incomplete depending on the set of authorizers the server is configured with and any errors experienced during evaluation. Because authorization rules are additive, if a rule appears in a list it's safe to assume the subject has that permission, even if that list is incomplete.
  class Api::Authorization::V1beta1::SubjectRulesReviewStatus
    # EvaluationError can appear in combination with Rules. It indicates an error occurred during rule evaluation, such as an authorizer that doesn't support rule evaluation, and that ResourceRules [and/or NonResourceRules may be incomplete.](and/or NonResourceRules may be incomplete.)
    property evaluation_error : String | Nil

    # Incomplete is true when the rules returned by this call are incomplete. This is most commonly encountered when an authorizer, such as an external authorizer, doesn't support rules evaluation.
    property incomplete : Bool

    # NonResourceRules is the list of actions the subject is allowed to perform on non-resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
    property non_resource_rules : Array(Api::Authorization::V1beta1::NonResourceRule)

    # ResourceRules is the list of actions the subject is allowed to perform on resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
    property resource_rules : Array(Api::Authorization::V1beta1::ResourceRule)

    YAML.mapping({
      evaluation_error:   {type: String, nilable: true, key: "evaluationError", getter: false, setter: false},
      incomplete:         {type: Bool, nilable: false, key: "incomplete", getter: false, setter: false},
      non_resource_rules: {type: Array(Api::Authorization::V1beta1::NonResourceRule), nilable: false, key: "nonResourceRules", getter: false, setter: false},
      resource_rules:     {type: Array(Api::Authorization::V1beta1::ResourceRule), nilable: false, key: "resourceRules", getter: false, setter: false},
    }, true)

    JSON.mapping({
      evaluation_error:   {type: String, nilable: true, key: "evaluationError", getter: false, setter: false},
      incomplete:         {type: Bool, nilable: false, key: "incomplete", getter: false, setter: false},
      non_resource_rules: {type: Array(Api::Authorization::V1beta1::NonResourceRule), nilable: false, key: "nonResourceRules", getter: false, setter: false},
      resource_rules:     {type: Array(Api::Authorization::V1beta1::ResourceRule), nilable: false, key: "resourceRules", getter: false, setter: false},
    }, true)

    def initialize(*, @evaluation_error : String | Nil = nil, @incomplete : Bool | Nil = nil, @non_resource_rules : Array | Nil = nil, @resource_rules : Array | Nil = nil)
    end
  end
end
