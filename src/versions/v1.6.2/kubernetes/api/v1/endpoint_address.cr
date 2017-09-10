# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # EndpointAddress is a tuple that describes single IP address.
  class Kubernetes::Api::V1::EndpointAddress
    # The Hostname of this endpoint
    property hostname : String | Nil

    # The IP of this endpoint. May not be loopback [(127.0.0.0/8), link-local (169.254.0.0/16), or link-local multicast ((224.0.0.0/24). IPv6 is also accepted but not fully supported on all platforms. Also, certain kubernetes components, like kube-proxy, are not IPv6 ready.]((127.0.0.0/8), link-local (169.254.0.0/16), or link-local multicast ((224.0.0.0/24). IPv6 is also accepted but not fully supported on all platforms. Also, certain kubernetes components, like kube-proxy, are not IPv6 ready.)
    property ip : String

    # Optional: Node hosting this endpoint. This can be used to determine endpoints local to a node.
    property node_name : String | Nil

    # Reference to object providing the endpoint.
    property target_ref : Kubernetes::Api::V1::ObjectReference | Nil

    YAML.mapping({
      hostname:   {type: String, nilable: true, key: "hostname"},
      ip:         {type: String, nilable: false, key: "ip"},
      node_name:  {type: String, nilable: true, key: "nodeName"},
      target_ref: {type: Kubernetes::Api::V1::ObjectReference, nilable: true, key: "targetRef"},
    }, true)

    JSON.mapping({
      hostname:   {type: String, nilable: true, key: "hostname"},
      ip:         {type: String, nilable: false, key: "ip"},
      node_name:  {type: String, nilable: true, key: "nodeName"},
      target_ref: {type: Kubernetes::Api::V1::ObjectReference, nilable: true, key: "targetRef"},
    }, true)

    def initialize(*, @hostname : String | Nil = nil, @ip : String | Nil = nil, @node_name : String | Nil = nil, @target_ref : Kubernetes::Api::V1::ObjectReference | Nil = nil)
    end
  end
end
