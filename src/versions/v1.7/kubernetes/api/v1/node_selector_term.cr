# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # A null or empty node selector term matches no objects.
  class Kubernetes::Api::V1::NodeSelectorTerm < Kubernetes::Spec
    # Required. A list of node selector requirements. The requirements are ANDed.
    @[::JSON::Field(key: "matchExpressions")]
    @[::YAML::Field(key: "matchExpressions")]
    property match_expressions : Array(Kubernetes::Api::V1::NodeSelectorRequirement)

    def initialize(*, @match_expressions : Array)
    end
  end
end
