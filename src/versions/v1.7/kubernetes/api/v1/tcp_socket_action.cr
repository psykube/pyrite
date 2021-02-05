# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # TCPSocketAction describes an action based on opening a socket
  class Kubernetes::Api::V1::TCPSocketAction
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Optional: Host name to connect to, defaults to the pod IP.
    @[JSON::Field(key: "host")]
    @[YAML::Field(key: "host")]
    property host : String | Nil

    # Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
    @[JSON::Field(key: "port")]
    @[YAML::Field(key: "port")]
    property port : Int32 | String

    def initialize(*, @host : String | Nil = nil, @port : Int32 | String)
    end
  end
end
