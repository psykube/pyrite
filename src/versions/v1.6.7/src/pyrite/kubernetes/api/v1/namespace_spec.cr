# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NamespaceSpec describes the attributes on a Namespace.
  class Kubernetes::Api::V1::NamespaceSpec
    # Finalizers is an opaque list of values that must be empty to permanently remove object from storage. More info: [http://releases.k8s.io/HEAD/docs/design/namespaces.md#finalizers](http://releases.k8s.io/HEAD/docs/design/namespaces.md#finalizers)
    property finalizers : Array(String) | Nil

    YAML.mapping({
      finalizers: {type: Array(String), nilable: true, key: "finalizers"},
    }, true)

    JSON.mapping({
      finalizers: {type: Array(String), nilable: true, key: "finalizers"},
    }, true)

    def initialize(*, @finalizers : Array | Nil = nil)
    end
  end
end
