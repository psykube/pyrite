# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NamespaceStatus is information about the current status of a Namespace.
  class Kubernetes::Api::V1::NamespaceStatus < Kubernetes::Spec
    # Phase is the current lifecycle phase of the namespace. More info: [http://releases.k8s.io/HEAD/docs/design/namespaces.md#phases](http://releases.k8s.io/HEAD/docs/design/namespaces.md#phases)
    @[::JSON::Field(key: "phase")]
    @[::YAML::Field(key: "phase")]
    property phase : String | Nil

    def initialize(*, @phase : String | Nil = nil)
    end
  end
end
