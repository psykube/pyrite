# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NodeDaemonEndpoints lists ports opened by daemons running on the Node.
  class Kubernetes::Api::V1::NodeDaemonEndpoints
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Endpoint on which Kubelet is listening.
    @[::JSON::Field(key: "kubeletEndpoint")]
    @[::YAML::Field(key: "kubeletEndpoint")]
    property kubelet_endpoint : Kubernetes::Api::V1::DaemonEndpoint | Nil

    def initialize(*, @kubelet_endpoint : Kubernetes::Api::V1::DaemonEndpoint | Nil = nil)
    end
  end
end
