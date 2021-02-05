# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NonResourceRule holds information that describes a rule for the non-resource
  class Api::Authorization::V1beta1::NonResourceRule
    include ::JSON::Serializable
    include ::YAML::Serializable

    # NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path.  "*" means all.
    @[::JSON::Field(key: "nonResourceURLs")]
    @[::YAML::Field(key: "nonResourceURLs")]
    property non_resource_urls : Array(String) | Nil

    # Verb is a list of kubernetes non-resource API verbs, like: get, post, put, delete, patch, head, options.  "*" means all.
    @[::JSON::Field(key: "verbs")]
    @[::YAML::Field(key: "verbs")]
    property verbs : Array(String)

    def initialize(*, @non_resource_urls : Array | Nil = nil, @verbs : Array)
    end
  end
end
