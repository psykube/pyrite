# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # A topology selector term represents the result of label queries. A null or empty topology selector term matches no objects. The requirements of them are ANDed. It provides a subset of functionality as NodeSelectorTerm. This is an alpha feature and may change in the future.
  class Api::Core::V1::TopologySelectorTerm
    include ::JSON::Serializable
    include ::YAML::Serializable

    # A list of topology selector requirements by labels.
    @[JSON::Field(key: "matchLabelExpressions")]
    @[YAML::Field(key: "matchLabelExpressions")]
    property match_label_expressions : Array(Api::Core::V1::TopologySelectorLabelRequirement) | Nil

    def initialize(*, @match_label_expressions : Array | Nil = nil)
    end
  end
end
