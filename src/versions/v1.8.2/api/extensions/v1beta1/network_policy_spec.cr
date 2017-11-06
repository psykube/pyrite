# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  class Api::Extensions::V1beta1::NetworkPolicySpec
    # List of egress rules to be applied to the selected pods. Outgoing traffic is allowed if there are no NetworkPolicies selecting the pod (and cluster policy otherwise allows the traffic), OR if the traffic matches at least one egress rule across all of the NetworkPolicy objects whose podSelector matches the pod. If this field is empty then this NetworkPolicy limits all outgoing traffic (and serves solely to ensure that the pods it selects are isolated by default). This field is beta-level in 1.8
    property egress : Array(Api::Extensions::V1beta1::NetworkPolicyEgressRule) | Nil

    # List of ingress rules to be applied to the selected pods. Traffic is allowed to a pod if there are no NetworkPolicies selecting the pod OR if the traffic source is the pod's local node, OR if the traffic matches at least one ingress rule across all of the NetworkPolicy objects whose podSelector matches the pod. If this field is empty then this NetworkPolicy does not allow any traffic (and serves solely to ensure that the pods it selects are isolated by default).
    property ingress : Array(Api::Extensions::V1beta1::NetworkPolicyIngressRule) | Nil

    # Selects the pods to which this NetworkPolicy object applies.  The array of ingress rules is applied to any pods selected by this field. Multiple network policies can select the same set of pods.  In this case, the ingress rules for each are combined additively. This field is NOT optional and follows standard label selector semantics. An empty podSelector matches all pods in this namespace.
    property pod_selector : Apimachinery::Apis::Meta::V1::LabelSelector

    # List of rule types that the NetworkPolicy relates to. Valid options are Ingress, Egress, or Ingress,Egress. If this field is not specified, it will default based on the existence of Ingress or Egress rules; policies that contain an Egress section are assumed to affect Egress, and all policies (whether or not they contain an Ingress section) are assumed to affect Ingress. If you want to write an egress-only policy, you must explicitly specify policyTypes [ "Egress" ]. Likewise, if you want to write a policy that specifies that no egress is allowed, you must specify a policyTypes value that include "Egress" (since such a policy would not include an Egress section and would otherwise default to just [ "Ingress" ]). This field is beta-level in 1.8
    property policy_types : Array(String) | Nil

    ::YAML.mapping({
      egress:       {type: Array(Api::Extensions::V1beta1::NetworkPolicyEgressRule), nilable: true, key: "egress", getter: false, setter: false},
      ingress:      {type: Array(Api::Extensions::V1beta1::NetworkPolicyIngressRule), nilable: true, key: "ingress", getter: false, setter: false},
      pod_selector: {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: false, key: "podSelector", getter: false, setter: false},
      policy_types: {type: Array(String), nilable: true, key: "policyTypes", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      egress:       {type: Array(Api::Extensions::V1beta1::NetworkPolicyEgressRule), nilable: true, key: "egress", getter: false, setter: false},
      ingress:      {type: Array(Api::Extensions::V1beta1::NetworkPolicyIngressRule), nilable: true, key: "ingress", getter: false, setter: false},
      pod_selector: {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: false, key: "podSelector", getter: false, setter: false},
      policy_types: {type: Array(String), nilable: true, key: "policyTypes", getter: false, setter: false},
    }, true)

    def initialize(*, @egress : Array | Nil = nil, @ingress : Array | Nil = nil, @pod_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @policy_types : Array | Nil = nil)
    end
  end
end
