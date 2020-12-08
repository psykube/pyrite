# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Overhead structure represents the resource overhead associated with running a pod.
  class Api::Node::V1beta1::Overhead
    # PodFixed represents the fixed resource overhead associated with running a pod.
    property pod_fixed : Hash(String, String) | Nil

    ::YAML.mapping({
      pod_fixed: {type: Hash(String, String), nilable: true, key: "podFixed", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      pod_fixed: {type: Hash(String, String), nilable: true, key: "podFixed", getter: false, setter: false},
    }, true)

    def initialize(*, @pod_fixed : Hash(String, String) | Nil = nil)
    end
  end
end
