# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NamespaceSpec describes the attributes on a Namespace.
  class Kubernetes::Api::V1::NamespaceSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Finalizers is an opaque list of values that must be empty to permanently remove object from storage. More info: [https://git.k8s.io/community/contributors/design-proposals/namespaces.md#finalizers](https://git.k8s.io/community/contributors/design-proposals/namespaces.md#finalizers)
    @[::JSON::Field(key: "finalizers")]
    @[::YAML::Field(key: "finalizers")]
    property finalizers : Array(String) | Nil

    def initialize(*, @finalizers : Array | Nil = nil)
    end
  end
end
