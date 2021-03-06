# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NamespaceSpec describes the attributes on a Namespace.
  class Api::Core::V1::NamespaceSpec < Kubernetes::Spec
    # Finalizers is an opaque list of values that must be empty to permanently remove object from storage. More info: [https://kubernetes.io/docs/tasks/administer-cluster/namespaces/](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/)
    @[::JSON::Field(key: "finalizers")]
    @[::YAML::Field(key: "finalizers")]
    property finalizers : Array(String) | Nil

    def initialize(*, @finalizers : Array | Nil = nil)
    end
  end
end
