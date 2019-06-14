# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ResourceRule is the list of actions the subject is allowed to perform on resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
  class Api::Authorization::V1beta1::ResourceRule
    # APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed.  "*" means all.
    property api_groups : Array(String) | Nil

    # ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.  "*" means all.
    property resource_names : Array(String) | Nil

    # Resources is a list of resources this rule applies to.  "*" means all in the specified apiGroups.
    #  ["*/foo" represents the subresource 'foo' for all resources in the specified apiGroups.]("*/foo" represents the subresource 'foo' for all resources in the specified apiGroups.)
    property resources : Array(String) | Nil

    # Verb is a list of kubernetes resource API verbs, like: get, list, watch, create, update, delete, proxy.  "*" means all.
    property verbs : Array(String)

    ::YAML.mapping({
      api_groups:     {type: Array(String), nilable: true, key: "apiGroups", getter: false, setter: false},
      resource_names: {type: Array(String), nilable: true, key: "resourceNames", getter: false, setter: false},
      resources:      {type: Array(String), nilable: true, key: "resources", getter: false, setter: false},
      verbs:          {type: Array(String), nilable: false, key: "verbs", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_groups:     {type: Array(String), nilable: true, key: "apiGroups", getter: false, setter: false},
      resource_names: {type: Array(String), nilable: true, key: "resourceNames", getter: false, setter: false},
      resources:      {type: Array(String), nilable: true, key: "resources", getter: false, setter: false},
      verbs:          {type: Array(String), nilable: false, key: "verbs", getter: false, setter: false},
    }, true)

    def initialize(*, @verbs : Array, @api_groups : Array | Nil = nil, @resource_names : Array | Nil = nil, @resources : Array | Nil = nil)
    end
  end
end
