# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# NodeDaemonEndpoints lists ports opened by daemons running on the Node.
class Pyrite::V1_6_0::Kubernetes::Api::V1::NodeDaemonEndpoints
  # Endpoint on which Kubelet is listening.
  property kubelet_endpoint : ::Pyrite::V1_6_0::Kubernetes::Api::V1::DaemonEndpoint

  YAML.mapping({kubelet_endpoint: {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::DaemonEndpoint, nilable: true, key: kubeletEndpoint, getter: false, setter: false}}, true)

  JSON.mapping({kubelet_endpoint: {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::DaemonEndpoint, nilable: true, key: kubeletEndpoint, getter: false, setter: false}}, true)

  def initialize(@kubelet_endpoint = nil)
  end
end
