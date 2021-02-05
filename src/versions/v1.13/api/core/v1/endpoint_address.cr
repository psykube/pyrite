# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # EndpointAddress is a tuple that describes single IP address.
  class Api::Core::V1::EndpointAddress
    include ::JSON::Serializable
    include ::YAML::Serializable

    # The Hostname of this endpoint
    @[JSON::Field(key: "hostname")]
    @[YAML::Field(key: "hostname")]
    property hostname : String | Nil

    # The IP of this endpoint. May not be loopback [(127.0.0.0/8), link-local (169.254.0.0/16), or link-local multicast ((224.0.0.0/24). IPv6 is also accepted but not fully supported on all platforms. Also, certain kubernetes components, like kube-proxy, are not IPv6 ready.]((127.0.0.0/8), link-local (169.254.0.0/16), or link-local multicast ((224.0.0.0/24). IPv6 is also accepted but not fully supported on all platforms. Also, certain kubernetes components, like kube-proxy, are not IPv6 ready.)
    @[JSON::Field(key: "ip")]
    @[YAML::Field(key: "ip")]
    property ip : String

    # Optional: Node hosting this endpoint. This can be used to determine endpoints local to a node.
    @[JSON::Field(key: "nodeName")]
    @[YAML::Field(key: "nodeName")]
    property node_name : String | Nil

    # Reference to object providing the endpoint.
    @[JSON::Field(key: "targetRef")]
    @[YAML::Field(key: "targetRef")]
    property target_ref : Api::Core::V1::ObjectReference | Nil

    def initialize(*, @hostname : String | Nil = nil, @ip : String, @node_name : String | Nil = nil, @target_ref : Api::Core::V1::ObjectReference | Nil = nil)
    end
  end
end
