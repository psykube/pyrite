# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # The weights of all of the matched WeightedPodAffinityTerm fields are added per-node to find the most preferred node(s)
  class Kubernetes::Api::V1::WeightedPodAffinityTerm
    # Required. A pod affinity term, associated with the corresponding weight.
    property pod_affinity_term : Kubernetes::Api::V1::PodAffinityTerm

    # weight associated with matching the corresponding podAffinityTerm, in the range 1-100.
    property weight : Int32

    YAML.mapping({
      pod_affinity_term: {type: Kubernetes::Api::V1::PodAffinityTerm, nilable: false, key: "podAffinityTerm"},
      weight:            {type: Int32, nilable: false, key: "weight"},
    }, true)

    JSON.mapping({
      pod_affinity_term: {type: Kubernetes::Api::V1::PodAffinityTerm, nilable: false, key: "podAffinityTerm"},
      weight:            {type: Int32, nilable: false, key: "weight"},
    }, true)

    def initialize(*, @pod_affinity_term : Kubernetes::Api::V1::PodAffinityTerm | Nil = nil, @weight : Int32 | Nil = nil)
    end
  end
end
