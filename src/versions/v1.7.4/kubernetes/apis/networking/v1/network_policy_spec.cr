# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NetworkPolicySpec provides the specification of a NetworkPolicy
  class Kubernetes::Apis::Networking::V1::NetworkPolicySpec
    # List of ingress rules to be applied to the selected pods. Traffic is allowed to a pod if there are no NetworkPolicies selecting the pod (and cluster policy otherwise allows the traffic), OR if the traffic source is the pod's local node, OR if the traffic matches at least one ingress rule across all of the NetworkPolicy objects whose podSelector matches the pod. If this field is empty then this NetworkPolicy does not allow any traffic (and serves solely to ensure that the pods it selects are isolated by default)
    property ingress : Array(Kubernetes::Apis::Networking::V1::NetworkPolicyIngressRule) | Nil

    # Selects the pods to which this NetworkPolicy object applies. The array of ingress rules is applied to any pods selected by this field. Multiple network policies can select the same set of pods. In this case, the ingress rules for each are combined additively. This field is NOT optional and follows standard label selector semantics. An empty podSelector matches all pods in this namespace.
    property pod_selector : Apimachinery::Apis::Meta::V1::LabelSelector

    YAML.mapping({
      ingress:      {type: Array(Kubernetes::Apis::Networking::V1::NetworkPolicyIngressRule), nilable: true, key: "ingress"},
      pod_selector: {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: false, key: "podSelector"},
    }, true)

    JSON.mapping({
      ingress:      {type: Array(Kubernetes::Apis::Networking::V1::NetworkPolicyIngressRule), nilable: true, key: "ingress"},
      pod_selector: {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: false, key: "podSelector"},
    }, true)

    def initialize(*, @ingress : Array | Nil = nil, @pod_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil)
    end
  end
end
