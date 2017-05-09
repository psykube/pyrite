# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_4
  # Handler defines a specific action that should be taken
  class Definitions::V1::Handler
    # One and only one of the following should be specified. Exec specifies the action to take.
    property exec : V1::ExecAction

    # HTTPGet specifies the http request to perform.
    property http_get : V1::HTTPGetAction

    # TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported
    property tcp_socket : V1::TCPSocketAction

    YAML.mapping({exec:       {type: V1::ExecAction, nilable: true, key: exec, getter: false, setter: false},
                  http_get:   {type: V1::HTTPGetAction, nilable: true, key: httpGet, getter: false, setter: false},
                  tcp_socket: {type: V1::TCPSocketAction, nilable: true, key: tcpSocket, getter: false, setter: false}}, true)

    JSON.mapping({exec:       {type: V1::ExecAction, nilable: true, key: exec, getter: false, setter: false},
                  http_get:   {type: V1::HTTPGetAction, nilable: true, key: httpGet, getter: false, setter: false},
                  tcp_socket: {type: V1::TCPSocketAction, nilable: true, key: tcpSocket, getter: false, setter: false}}, true)

    def initialize(@exec : V1::ExecAction = nil, @http_get : V1::HTTPGetAction = nil, @tcp_socket : V1::TCPSocketAction = nil)
    end
  end
end
