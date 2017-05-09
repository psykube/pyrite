# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_0
  # PolicyRule holds information that describes a policy rule, but does not contain information about who the rule applies to or which namespace the rule applies to.
  class Definitions::Kubernetes::Apis::Rbac::V1alpha1::PolicyRule
    # APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed.
    property api_groups : Array(String)?

    # NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path This name is intentionally different than the internal type so that the DefaultConvert works nicely and because the ordering may be different. Since non-resource URLs are not namespaced, this field is only applicable for ClusterRoles referenced from a ClusterRoleBinding. Rules can either apply to API resources (such as "pods" or "secrets") or non-resource URL paths (such as ["/api"),  but not both.]("/api"),  but not both.)
    property non_resource_ur_ls : Array(String)?

    # ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.
    property resource_names : Array(String)?

    # Resources is a list of resources this rule applies to.  ResourceAll represents all resources.
    property resources : Array(String)?

    # Verbs is a list of Verbs that apply to ALL the ResourceKinds and AttributeRestrictions contained in this rule.  VerbAll represents all kinds.
    property verbs : Array(String)

    YAML.mapping({api_groups:         {type: Array(String), nilable: true, key: apiGroups, getter: false, setter: false},
                  non_resource_ur_ls: {type: Array(String), nilable: true, key: nonResourceURLs, getter: false, setter: false},
                  resource_names:     {type: Array(String), nilable: true, key: resourceNames, getter: false, setter: false},
                  resources:          {type: Array(String), nilable: true, key: resources, getter: false, setter: false},
                  verbs:              {type: Array(String), nilable: false, key: verbs, getter: false, setter: false}}, true)

    JSON.mapping({api_groups:         {type: Array(String), nilable: true, key: apiGroups, getter: false, setter: false},
                  non_resource_ur_ls: {type: Array(String), nilable: true, key: nonResourceURLs, getter: false, setter: false},
                  resource_names:     {type: Array(String), nilable: true, key: resourceNames, getter: false, setter: false},
                  resources:          {type: Array(String), nilable: true, key: resources, getter: false, setter: false},
                  verbs:              {type: Array(String), nilable: false, key: verbs, getter: false, setter: false}}, true)

    def initialize(@api_groups : Array? = nil, @non_resource_ur_ls : Array? = nil, @resource_names : Array? = nil, @resources : Array? = nil, @verbs : Array? = nil)
    end
  end
end
