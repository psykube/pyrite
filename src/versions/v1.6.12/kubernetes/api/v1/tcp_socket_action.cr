# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # TCPSocketAction describes an action based on opening a socket
  class Kubernetes::Api::V1::TCPSocketAction
    # Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
    property port : Int32 | String

    YAML.mapping({
      port: {type: Int32 | String, nilable: false, key: "port", getter: false, setter: false},
    }, true)

    JSON.mapping({
      port: {type: Int32 | String, nilable: false, key: "port", getter: false, setter: false},
    }, true)

    def initialize(*, @port : Int32 | String | Nil = nil)
    end
  end
end
