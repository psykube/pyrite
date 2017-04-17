# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s)) that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where co-located is defined as running on a node whose value of the label with key <topologyKey> tches that of any node on which a pod of the set of pods is running
class K8S::V1_6_1::Kubernetes::Api::V1::PodAffinityTerm
  # A label query over a set of resources, in this case pods.
  property label_selector : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::LabelSelector

  # namespaces specifies which namespaces the labelSelector applies to (matches against); null or empty list means "this pod's namespace"
  property namespaces : Array(String)?

  # This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running.For PreferredDuringScheduling pod anti-affinity, empty topologyKey is interpreted as "all topologies" ("all topologies" here means all the topologyKeys indicated by scheduler command-line argument --failure-domains); for affinity and for RequiredDuringScheduling pod anti-affinity, empty topologyKey is not allowed.
  property topology_key : String?

  YAML.mapping({label_selector: {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: labelSelector, getter: false, setter: false},
                namespaces:     {type: Array(String), nilable: true, key: namespaces, getter: false, setter: false},
                topology_key:   {type: String, nilable: true, key: topologyKey, getter: false, setter: false}}, true)

  JSON.mapping({label_selector: {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: labelSelector, getter: false, setter: false},
                namespaces:     {type: Array(String), nilable: true, key: namespaces, getter: false, setter: false},
                topology_key:   {type: String, nilable: true, key: topologyKey, getter: false, setter: false}}, true)

  def initialize(@label_selector = nil, @namespaces = nil, @topology_key = nil)
  end
end
