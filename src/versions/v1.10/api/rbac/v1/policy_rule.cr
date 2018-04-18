# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PolicyRule holds information that describes a policy rule, but does not contain information about who the rule applies to or which namespace the rule applies to.
  class Api::Rbac::V1::PolicyRule
    # APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed.
    property api_groups : Array(String) | Nil

    # NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path Since non-resource URLs are not namespaced, this field is only applicable for ClusterRoles referenced from a ClusterRoleBinding. Rules can either apply to API resources (such as "pods" or "secrets") or non-resource URL paths (such as ["/api"),  but not both.]("/api"),  but not both.)
    property non_resource_urls : Array(String) | Nil

    # ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.
    property resource_names : Array(String) | Nil

    # Resources is a list of resources this rule applies to.  ResourceAll represents all resources.
    property resources : Array(String) | Nil

    # Verbs is a list of Verbs that apply to ALL the ResourceKinds and AttributeRestrictions contained in this rule.  VerbAll represents all kinds.
    property verbs : Array(String)

    ::YAML.mapping({
      api_groups:        {type: Array(String), nilable: true, key: "apiGroups", getter: false, setter: false},
      non_resource_urls: {type: Array(String), nilable: true, key: "nonResourceURLs", getter: false, setter: false},
      resource_names:    {type: Array(String), nilable: true, key: "resourceNames", getter: false, setter: false},
      resources:         {type: Array(String), nilable: true, key: "resources", getter: false, setter: false},
      verbs:             {type: Array(String), nilable: false, key: "verbs", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_groups:        {type: Array(String), nilable: true, key: "apiGroups", getter: false, setter: false},
      non_resource_urls: {type: Array(String), nilable: true, key: "nonResourceURLs", getter: false, setter: false},
      resource_names:    {type: Array(String), nilable: true, key: "resourceNames", getter: false, setter: false},
      resources:         {type: Array(String), nilable: true, key: "resources", getter: false, setter: false},
      verbs:             {type: Array(String), nilable: false, key: "verbs", getter: false, setter: false},
    }, true)

    def initialize(*, @verbs : Array, @api_groups : Array | Nil = nil, @non_resource_urls : Array | Nil = nil, @resource_names : Array | Nil = nil, @resources : Array | Nil = nil)
    end
  end
end
