# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # A null or empty node selector term matches no objects. The requirements of them are ANDed. The TopologySelectorTerm type implements a subset of the NodeSelectorTerm.
  class Api::Core::V1::NodeSelectorTerm
    include ::JSON::Serializable
    include ::YAML::Serializable

    # A list of node selector requirements by node's labels.
    @[::JSON::Field(key: "matchExpressions")]
    @[::YAML::Field(key: "matchExpressions")]
    property match_expressions : Array(Api::Core::V1::NodeSelectorRequirement) | Nil

    # A list of node selector requirements by node's fields.
    @[::JSON::Field(key: "matchFields")]
    @[::YAML::Field(key: "matchFields")]
    property match_fields : Array(Api::Core::V1::NodeSelectorRequirement) | Nil

    def initialize(*, @match_expressions : Array | Nil = nil, @match_fields : Array | Nil = nil)
    end
  end
end
