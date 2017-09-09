# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NamespaceStatus is information about the current status of a Namespace.
  class Kubernetes::Api::V1::NamespaceStatus
    # Phase is the current lifecycle phase of the namespace. More info: [https://git.k8s.io/community/contributors/design-proposals/namespaces.md#phases](https://git.k8s.io/community/contributors/design-proposals/namespaces.md#phases)
    property phase : String | Nil

    YAML.mapping({
      phase: {type: String, nilable: true, key: "phase"},
    }, true)

    JSON.mapping({
      phase: {type: String, nilable: true, key: "phase"},
    }, true)

    def initialize(*, @phase : String | Nil = nil)
    end
  end
end
