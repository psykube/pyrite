# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # A null or empty node selector term matches no objects. The requirements of them are ANDed. The TopologySelectorTerm type implements a subset of the NodeSelectorTerm.
  class Api::Core::V1::NodeSelectorTerm
    # A list of node selector requirements by node's labels.
    property match_expressions : Array(Api::Core::V1::NodeSelectorRequirement) | Nil

    # A list of node selector requirements by node's fields.
    property match_fields : Array(Api::Core::V1::NodeSelectorRequirement) | Nil

    ::YAML.mapping({
      match_expressions: {type: Array(Api::Core::V1::NodeSelectorRequirement), nilable: true, key: "matchExpressions", getter: false, setter: false},
      match_fields:      {type: Array(Api::Core::V1::NodeSelectorRequirement), nilable: true, key: "matchFields", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      match_expressions: {type: Array(Api::Core::V1::NodeSelectorRequirement), nilable: true, key: "matchExpressions", getter: false, setter: false},
      match_fields:      {type: Array(Api::Core::V1::NodeSelectorRequirement), nilable: true, key: "matchFields", getter: false, setter: false},
    }, true)

    def initialize(*, @match_expressions : Array | Nil = nil, @match_fields : Array | Nil = nil)
    end
  end
end
