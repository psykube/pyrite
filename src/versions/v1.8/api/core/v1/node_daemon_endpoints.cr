# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NodeDaemonEndpoints lists ports opened by daemons running on the Node.
  class Api::Core::V1::NodeDaemonEndpoints
    # Endpoint on which Kubelet is listening.
    property kubelet_endpoint : Api::Core::V1::DaemonEndpoint | Nil

    ::YAML.mapping({
      kubelet_endpoint: {type: Api::Core::V1::DaemonEndpoint, nilable: true, key: "kubeletEndpoint", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      kubelet_endpoint: {type: Api::Core::V1::DaemonEndpoint, nilable: true, key: "kubeletEndpoint", getter: false, setter: false},
    }, true)

    def initialize(*, @kubelet_endpoint : Api::Core::V1::DaemonEndpoint | Nil = nil)
    end
  end
end
