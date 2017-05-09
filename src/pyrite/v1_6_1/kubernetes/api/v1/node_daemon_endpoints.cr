# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_1
  # NodeDaemonEndpoints lists ports opened by daemons running on the Node.
  class Definitions::Kubernetes::Api::V1::NodeDaemonEndpoints
    # Endpoint on which Kubelet is listening.
    property kubelet_endpoint : Kubernetes::Api::V1::DaemonEndpoint

    YAML.mapping({kubelet_endpoint: {type: Kubernetes::Api::V1::DaemonEndpoint, nilable: true, key: kubeletEndpoint, getter: false, setter: false}}, true)

    JSON.mapping({kubelet_endpoint: {type: Kubernetes::Api::V1::DaemonEndpoint, nilable: true, key: kubeletEndpoint, getter: false, setter: false}}, true)

    def initialize(@kubelet_endpoint : Kubernetes::Api::V1::DaemonEndpoint = nil)
    end
  end
end
