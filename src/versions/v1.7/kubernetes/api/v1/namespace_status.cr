# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NamespaceStatus is information about the current status of a Namespace.
  class Kubernetes::Api::V1::NamespaceStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Phase is the current lifecycle phase of the namespace. More info: [https://git.k8s.io/community/contributors/design-proposals/namespaces.md#phases](https://git.k8s.io/community/contributors/design-proposals/namespaces.md#phases)
    @[JSON::Field(key: "phase")]
    @[YAML::Field(key: "phase")]
    property phase : String | Nil

    def initialize(*, @phase : String | Nil = nil)
    end
  end
end
