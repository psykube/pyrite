# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Overhead structure represents the resource overhead associated with running a pod.
  class Api::Node::V1beta1::Overhead < Kubernetes::Spec
    # PodFixed represents the fixed resource overhead associated with running a pod.
    @[::JSON::Field(key: "podFixed")]
    @[::YAML::Field(key: "podFixed")]
    property pod_fixed : Hash(String, String) | Nil

    def initialize(*, @pod_fixed : Hash(String, String) | Nil = nil)
    end
  end
end
