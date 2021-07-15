# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s)) that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where co-located is defined as running on a node whose value of the label with key <topologyKey> matches that of any node on which a pod of the set of pods is running
  class Api::Core::V1::PodAffinityTerm < Kubernetes::Spec
    # A label query over a set of resources, in this case pods.
    @[::JSON::Field(key: "labelSelector")]
    @[::YAML::Field(key: "labelSelector")]
    property label_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # namespaces specifies which namespaces the labelSelector applies to (matches against); null or empty list means "this pod's namespace"
    @[::JSON::Field(key: "namespaces")]
    @[::YAML::Field(key: "namespaces")]
    property namespaces : Array(String) | Nil

    # This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.
    @[::JSON::Field(key: "topologyKey")]
    @[::YAML::Field(key: "topologyKey")]
    property topology_key : String

    def initialize(*, @label_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @namespaces : Array | Nil = nil, @topology_key : String)
    end
  end
end
