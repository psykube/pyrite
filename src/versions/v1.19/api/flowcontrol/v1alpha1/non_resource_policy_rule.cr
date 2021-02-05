# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NonResourcePolicyRule is a predicate that matches non-resource requests according to their verb and the target non-resource URL. A NonResourcePolicyRule matches a request if and only if both (a) at least one member of verbs matches the request and (b) at least one member of nonResourceURLs matches the request.
  class Api::Flowcontrol::V1alpha1::NonResourcePolicyRule
    include ::JSON::Serializable
    include ::YAML::Serializable

    # `nonResourceURLs` is a set of url prefixes that a user should have access to and may not be empty. For example:
    #   - ["/healthz" is legal]("/healthz" is legal)
    #   - ["/hea*" is illegal]("/hea*" is illegal)
    #   - ["/hea" is legal but matches nothing]("/hea" is legal but matches nothing)
    #   - ["/hea/*" also matches nothing]("/hea/*" also matches nothing)
    #   - ["/healthz/*" matches all per-component health checks.]("/healthz/*" matches all per-component health checks.)
    # "*" matches all non-resource urls. if it is present, it must be the only entry. Required.
    @[JSON::Field(key: "nonResourceURLs")]
    @[YAML::Field(key: "nonResourceURLs")]
    property non_resource_urls : Array(String)

    # `verbs` is a list of matching verbs and may not be empty. "*" matches all verbs. If it is present, it must be the only entry. Required.
    @[JSON::Field(key: "verbs")]
    @[YAML::Field(key: "verbs")]
    property verbs : Array(String)

    def initialize(*, @non_resource_urls : Array, @verbs : Array)
    end
  end
end
