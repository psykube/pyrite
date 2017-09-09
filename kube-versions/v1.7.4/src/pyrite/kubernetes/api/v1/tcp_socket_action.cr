# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # TCPSocketAction describes an action based on opening a socket
  class Kubernetes::Api::V1::TCPSocketAction
    # Optional: Host name to connect to, defaults to the pod IP.
    property host : String | Nil

    # Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
    property port : Int32 | String

    YAML.mapping({
      host: {type: String, nilable: true, key: "host"},
      port: {type: Int32 | String, nilable: false, key: "port"},
    }, true)

    JSON.mapping({
      host: {type: String, nilable: true, key: "host"},
      port: {type: Int32 | String, nilable: false, key: "port"},
    }, true)

    def initialize(*, @host : String | Nil = nil, @port : Int32 | String | Nil = nil)
    end
  end
end
