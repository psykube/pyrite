# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Affinity is a group of affinity scheduling rules.
  class Kubernetes::Api::V1::Affinity
    # Describes node affinity scheduling rules for the pod.
    property node_affinity : Kubernetes::Api::V1::NodeAffinity | Nil

    # Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone, etc. as some other pod(s)).
    property pod_affinity : Kubernetes::Api::V1::PodAffinity | Nil

    # Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node, zone, etc. as some other pod(s)).
    property pod_anti_affinity : Kubernetes::Api::V1::PodAntiAffinity | Nil

    ::YAML.mapping({
      node_affinity:     {type: Kubernetes::Api::V1::NodeAffinity, nilable: true, key: "nodeAffinity", getter: false, setter: false},
      pod_affinity:      {type: Kubernetes::Api::V1::PodAffinity, nilable: true, key: "podAffinity", getter: false, setter: false},
      pod_anti_affinity: {type: Kubernetes::Api::V1::PodAntiAffinity, nilable: true, key: "podAntiAffinity", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      node_affinity:     {type: Kubernetes::Api::V1::NodeAffinity, nilable: true, key: "nodeAffinity", getter: false, setter: false},
      pod_affinity:      {type: Kubernetes::Api::V1::PodAffinity, nilable: true, key: "podAffinity", getter: false, setter: false},
      pod_anti_affinity: {type: Kubernetes::Api::V1::PodAntiAffinity, nilable: true, key: "podAntiAffinity", getter: false, setter: false},
    }, true)

    def initialize(*, @node_affinity : Kubernetes::Api::V1::NodeAffinity | Nil = nil, @pod_affinity : Kubernetes::Api::V1::PodAffinity | Nil = nil, @pod_anti_affinity : Kubernetes::Api::V1::PodAntiAffinity | Nil = nil)
    end
  end
end
