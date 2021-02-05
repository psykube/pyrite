# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ResourceQuotaSpec defines the desired hard limits to enforce for Quota.
  class Api::Core::V1::ResourceQuotaSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # hard is the set of desired hard limits for each named resource. More info: [https://kubernetes.io/docs/concepts/policy/resource-quotas/](https://kubernetes.io/docs/concepts/policy/resource-quotas/)
    @[::JSON::Field(key: "hard")]
    @[::YAML::Field(key: "hard")]
    property hard : Hash(String, String) | Nil

    # scopeSelector is also a collection of filters like scopes that must match each object tracked by a quota but expressed using ScopeSelectorOperator in combination with possible values. For a resource to match, both scopes AND scopeSelector (if specified in spec), must be matched.
    @[::JSON::Field(key: "scopeSelector")]
    @[::YAML::Field(key: "scopeSelector")]
    property scope_selector : Api::Core::V1::ScopeSelector | Nil

    # A collection of filters that must match each object tracked by a quota. If not specified, the quota matches all objects.
    @[::JSON::Field(key: "scopes")]
    @[::YAML::Field(key: "scopes")]
    property scopes : Array(String) | Nil

    def initialize(*, @hard : Hash(String, String) | Nil = nil, @scope_selector : Api::Core::V1::ScopeSelector | Nil = nil, @scopes : Array | Nil = nil)
    end
  end
end
