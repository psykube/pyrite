# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# Affinity is a group of affinity scheduling rules.
class K8S::V1_6_0::Kubernetes::Api::V1::Affinity
  # Describes node affinity scheduling rules for the pod.
  property node_affinity : ::K8S::V1_6_0::Kubernetes::Api::V1::NodeAffinity

  # Describes pod affinity scheduling rules (e.g.co-locate this pod in the same node, zone, etc.as some other pod(s)).
  property pod_affinity : ::K8S::V1_6_0::Kubernetes::Api::V1::PodAffinity

  # Describes pod anti-affinity scheduling rules (e.g.avoid putting this pod in the same node, zone, etc.as some other pod(s)).
  property pod_anti_affinity : ::K8S::V1_6_0::Kubernetes::Api::V1::PodAntiAffinity

  YAML.mapping({node_affinity:     {type: ::K8S::V1_6_0::Kubernetes::Api::V1::NodeAffinity, nilable: true, key: nodeAffinity, getter: false, setter: false},
                pod_affinity:      {type: ::K8S::V1_6_0::Kubernetes::Api::V1::PodAffinity, nilable: true, key: podAffinity, getter: false, setter: false},
                pod_anti_affinity: {type: ::K8S::V1_6_0::Kubernetes::Api::V1::PodAntiAffinity, nilable: true, key: podAntiAffinity, getter: false, setter: false}}, true)

  JSON.mapping({node_affinity:     {type: ::K8S::V1_6_0::Kubernetes::Api::V1::NodeAffinity, nilable: true, key: nodeAffinity, getter: false, setter: false},
                pod_affinity:      {type: ::K8S::V1_6_0::Kubernetes::Api::V1::PodAffinity, nilable: true, key: podAffinity, getter: false, setter: false},
                pod_anti_affinity: {type: ::K8S::V1_6_0::Kubernetes::Api::V1::PodAntiAffinity, nilable: true, key: podAntiAffinity, getter: false, setter: false}}, true)

  def initialize(@node_affinity = nil, @pod_affinity = nil, @pod_anti_affinity = nil)
  end
end
