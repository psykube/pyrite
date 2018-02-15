# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NonResourceRule holds information that describes a rule for the non-resource
  class Api::Authorization::V1beta1::NonResourceRule
    # NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path.  "*" means all.
    property non_resource_urls : Array(String) | Nil

    # Verb is a list of kubernetes non-resource API verbs, like: get, post, put, delete, patch, head, options.  "*" means all.
    property verbs : Array(String)

    ::YAML.mapping({
      non_resource_urls: {type: Array(String), nilable: true, key: "nonResourceURLs", getter: false, setter: false},
      verbs:             {type: Array(String), nilable: false, key: "verbs", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      non_resource_urls: {type: Array(String), nilable: true, key: "nonResourceURLs", getter: false, setter: false},
      verbs:             {type: Array(String), nilable: false, key: "verbs", getter: false, setter: false},
    }, true)

    def initialize(*, @non_resource_urls : Array | Nil = nil, @verbs : Array | Nil = nil)
    end
  end
end
