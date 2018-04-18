# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # A null or empty node selector term matches no objects.
  class Api::Core::V1::NodeSelectorTerm
    # Required. A list of node selector requirements. The requirements are ANDed.
    property match_expressions : Array(Api::Core::V1::NodeSelectorRequirement)

    ::YAML.mapping({
      match_expressions: {type: Array(Api::Core::V1::NodeSelectorRequirement), nilable: false, key: "matchExpressions", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      match_expressions: {type: Array(Api::Core::V1::NodeSelectorRequirement), nilable: false, key: "matchExpressions", getter: false, setter: false},
    }, true)

    def initialize(*, @match_expressions : Array)
    end
  end
end
