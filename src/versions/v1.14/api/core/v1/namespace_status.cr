# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NamespaceStatus is information about the current status of a Namespace.
  class Api::Core::V1::NamespaceStatus < Kubernetes::Spec
    # Phase is the current lifecycle phase of the namespace. More info: [https://kubernetes.io/docs/tasks/administer-cluster/namespaces/](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/)
    @[::JSON::Field(key: "phase")]
    @[::YAML::Field(key: "phase")]
    property phase : String | Nil

    def initialize(*, @phase : String | Nil = nil)
    end
  end
end
