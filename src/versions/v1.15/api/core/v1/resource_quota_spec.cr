# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ResourceQuotaSpec defines the desired hard limits to enforce for Quota.
  class Api::Core::V1::ResourceQuotaSpec
    # hard is the set of desired hard limits for each named resource. More info: [https://kubernetes.io/docs/concepts/policy/resource-quotas/](https://kubernetes.io/docs/concepts/policy/resource-quotas/)
    property hard : Hash(String, String) | Nil

    # scopeSelector is also a collection of filters like scopes that must match each object tracked by a quota but expressed using ScopeSelectorOperator in combination with possible values. For a resource to match, both scopes AND scopeSelector (if specified in spec), must be matched.
    property scope_selector : Api::Core::V1::ScopeSelector | Nil

    # A collection of filters that must match each object tracked by a quota. If not specified, the quota matches all objects.
    property scopes : Array(String) | Nil

    ::YAML.mapping({
      hard:           {type: Hash(String, String), nilable: true, key: "hard", getter: false, setter: false},
      scope_selector: {type: Api::Core::V1::ScopeSelector, nilable: true, key: "scopeSelector", getter: false, setter: false},
      scopes:         {type: Array(String), nilable: true, key: "scopes", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      hard:           {type: Hash(String, String), nilable: true, key: "hard", getter: false, setter: false},
      scope_selector: {type: Api::Core::V1::ScopeSelector, nilable: true, key: "scopeSelector", getter: false, setter: false},
      scopes:         {type: Array(String), nilable: true, key: "scopes", getter: false, setter: false},
    }, true)

    def initialize(*, @hard : Hash(String, String) | Nil = nil, @scope_selector : Api::Core::V1::ScopeSelector | Nil = nil, @scopes : Array | Nil = nil)
    end
  end
end
