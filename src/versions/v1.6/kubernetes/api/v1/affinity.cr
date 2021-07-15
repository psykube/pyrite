# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Affinity is a group of affinity scheduling rules.
  class Kubernetes::Api::V1::Affinity < Kubernetes::Spec
    # Describes node affinity scheduling rules for the pod.
    @[::JSON::Field(key: "nodeAffinity")]
    @[::YAML::Field(key: "nodeAffinity")]
    property node_affinity : Kubernetes::Api::V1::NodeAffinity | Nil

    # Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone, etc. as some other pod(s)).
    @[::JSON::Field(key: "podAffinity")]
    @[::YAML::Field(key: "podAffinity")]
    property pod_affinity : Kubernetes::Api::V1::PodAffinity | Nil

    # Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node, zone, etc. as some other pod(s)).
    @[::JSON::Field(key: "podAntiAffinity")]
    @[::YAML::Field(key: "podAntiAffinity")]
    property pod_anti_affinity : Kubernetes::Api::V1::PodAntiAffinity | Nil

    def initialize(*, @node_affinity : Kubernetes::Api::V1::NodeAffinity | Nil = nil, @pod_affinity : Kubernetes::Api::V1::PodAffinity | Nil = nil, @pod_anti_affinity : Kubernetes::Api::V1::PodAntiAffinity | Nil = nil)
    end
  end
end
