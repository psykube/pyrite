# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # A node selector represents the union of the results of one or more label queries over a set of nodes; that is, it represents the OR of the selectors represented by the node selector terms.
  class Kubernetes::Api::V1::NodeSelector
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Required. A list of node selector terms. The terms are ORed.
    @[JSON::Field(key: "nodeSelectorTerms")]
    @[YAML::Field(key: "nodeSelectorTerms")]
    property node_selector_terms : Array(Kubernetes::Api::V1::NodeSelectorTerm)

    def initialize(*, @node_selector_terms : Array)
    end
  end
end
