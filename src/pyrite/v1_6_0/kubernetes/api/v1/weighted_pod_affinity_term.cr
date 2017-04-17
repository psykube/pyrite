# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# The weights of all of the matched WeightedPodAffinityTerm fields are added per-node to find the most preferred node(s)
class Pyrite::V1_6_0::Kubernetes::Api::V1::WeightedPodAffinityTerm
  # Required.A pod affinity term, associated with the corresponding weight.
  property pod_affinity_term : ::Pyrite::V1_6_0::Kubernetes::Api::V1::PodAffinityTerm

  # weight associated with matching the corresponding podAffinityTerm, in the range 1-100.
  property weight : Int32

  YAML.mapping({pod_affinity_term: {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::PodAffinityTerm, nilable: false, key: podAffinityTerm, getter: false, setter: false},
                weight:            {type: Int32, nilable: false, key: weight, getter: false, setter: false}}, true)

  JSON.mapping({pod_affinity_term: {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::PodAffinityTerm, nilable: false, key: podAffinityTerm, getter: false, setter: false},
                weight:            {type: Int32, nilable: false, key: weight, getter: false, setter: false}}, true)

  def initialize(@pod_affinity_term, @weight)
  end
end
