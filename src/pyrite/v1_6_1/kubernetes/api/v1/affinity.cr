# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# Affinity is a group of affinity scheduling rules.
class Pyrite::V1_6_1::Kubernetes::Api::V1::Affinity
  # Describes node affinity scheduling rules for the pod.
  property node_affinity : ::Pyrite::V1_6_1::Kubernetes::Api::V1::NodeAffinity

  # Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone, etc. as some other pod(s)).
  property pod_affinity : ::Pyrite::V1_6_1::Kubernetes::Api::V1::PodAffinity

  # Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node, zone, etc. as some other pod(s)).
  property pod_anti_affinity : ::Pyrite::V1_6_1::Kubernetes::Api::V1::PodAntiAffinity

  YAML.mapping({node_affinity:     {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::NodeAffinity, nilable: true, key: nodeAffinity, getter: false, setter: false},
                pod_affinity:      {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::PodAffinity, nilable: true, key: podAffinity, getter: false, setter: false},
                pod_anti_affinity: {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::PodAntiAffinity, nilable: true, key: podAntiAffinity, getter: false, setter: false}}, true)

  JSON.mapping({node_affinity:     {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::NodeAffinity, nilable: true, key: nodeAffinity, getter: false, setter: false},
                pod_affinity:      {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::PodAffinity, nilable: true, key: podAffinity, getter: false, setter: false},
                pod_anti_affinity: {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::PodAntiAffinity, nilable: true, key: podAntiAffinity, getter: false, setter: false}}, true)

  def initialize(@node_affinity : ::Pyrite::V1_6_1::Kubernetes::Api::V1::NodeAffinity = nil, @pod_affinity : ::Pyrite::V1_6_1::Kubernetes::Api::V1::PodAffinity = nil, @pod_anti_affinity : ::Pyrite::V1_6_1::Kubernetes::Api::V1::PodAntiAffinity = nil)
  end
end
