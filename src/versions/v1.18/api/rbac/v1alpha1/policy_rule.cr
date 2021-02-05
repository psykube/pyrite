# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PolicyRule holds information that describes a policy rule, but does not contain information about who the rule applies to or which namespace the rule applies to.
  class Api::Rbac::V1alpha1::PolicyRule
    include ::JSON::Serializable
    include ::YAML::Serializable

    # APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed.
    @[::JSON::Field(key: "apiGroups")]
    @[::YAML::Field(key: "apiGroups")]
    property api_groups : Array(String) | Nil

    # NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path Since non-resource URLs are not namespaced, this field is only applicable for ClusterRoles referenced from a ClusterRoleBinding. Rules can either apply to API resources (such as "pods" or "secrets") or non-resource URL paths (such as ["/api"),  but not both.]("/api"),  but not both.)
    @[::JSON::Field(key: "nonResourceURLs")]
    @[::YAML::Field(key: "nonResourceURLs")]
    property non_resource_urls : Array(String) | Nil

    # ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.
    @[::JSON::Field(key: "resourceNames")]
    @[::YAML::Field(key: "resourceNames")]
    property resource_names : Array(String) | Nil

    # Resources is a list of resources this rule applies to.  ResourceAll represents all resources.
    @[::JSON::Field(key: "resources")]
    @[::YAML::Field(key: "resources")]
    property resources : Array(String) | Nil

    # Verbs is a list of Verbs that apply to ALL the ResourceKinds and AttributeRestrictions contained in this rule.  VerbAll represents all kinds.
    @[::JSON::Field(key: "verbs")]
    @[::YAML::Field(key: "verbs")]
    property verbs : Array(String)

    def initialize(*, @api_groups : Array | Nil = nil, @non_resource_urls : Array | Nil = nil, @resource_names : Array | Nil = nil, @resources : Array | Nil = nil, @verbs : Array)
    end
  end
end
