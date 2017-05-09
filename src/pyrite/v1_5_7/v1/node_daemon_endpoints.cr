# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_7
  # NodeDaemonEndpoints lists ports opened by daemons running on the Node.
  class Definitions::V1::NodeDaemonEndpoints
    # Endpoint on which Kubelet is listening.
    property kubelet_endpoint : V1::DaemonEndpoint

    YAML.mapping({kubelet_endpoint: {type: V1::DaemonEndpoint, nilable: true, key: kubeletEndpoint, getter: false, setter: false}}, true)

    JSON.mapping({kubelet_endpoint: {type: V1::DaemonEndpoint, nilable: true, key: kubeletEndpoint, getter: false, setter: false}}, true)

    def initialize(@kubelet_endpoint : V1::DaemonEndpoint = nil)
    end
  end
end
