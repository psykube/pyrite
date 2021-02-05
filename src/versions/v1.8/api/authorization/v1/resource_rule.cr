# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ResourceRule is the list of actions the subject is allowed to perform on resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
  class Api::Authorization::V1::ResourceRule
    include ::JSON::Serializable
    include ::YAML::Serializable

    # APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed.  "*" means all.
    @[JSON::Field(key: "apiGroups")]
    @[YAML::Field(key: "apiGroups")]
    property api_groups : Array(String) | Nil

    # ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.  "*" means all.
    @[JSON::Field(key: "resourceNames")]
    @[YAML::Field(key: "resourceNames")]
    property resource_names : Array(String) | Nil

    # Resources is a list of resources this rule applies to.  ResourceAll represents all resources.  "*" means all.
    @[JSON::Field(key: "resources")]
    @[YAML::Field(key: "resources")]
    property resources : Array(String) | Nil

    # Verb is a list of kubernetes resource API verbs, like: get, list, watch, create, update, delete, proxy.  "*" means all.
    @[JSON::Field(key: "verbs")]
    @[YAML::Field(key: "verbs")]
    property verbs : Array(String)

    def initialize(*, @api_groups : Array | Nil = nil, @resource_names : Array | Nil = nil, @resources : Array | Nil = nil, @verbs : Array)
    end
  end
end
