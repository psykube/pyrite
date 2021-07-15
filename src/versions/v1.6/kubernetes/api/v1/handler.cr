# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Handler defines a specific action that should be taken
  class Kubernetes::Api::V1::Handler < Kubernetes::Spec
    # One and only one of the following should be specified. Exec specifies the action to take.
    @[::JSON::Field(key: "exec")]
    @[::YAML::Field(key: "exec")]
    property exec : Kubernetes::Api::V1::ExecAction | Nil

    # HTTPGet specifies the http request to perform.
    @[::JSON::Field(key: "httpGet")]
    @[::YAML::Field(key: "httpGet")]
    property http_get : Kubernetes::Api::V1::HTTPGetAction | Nil

    # TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported
    @[::JSON::Field(key: "tcpSocket")]
    @[::YAML::Field(key: "tcpSocket")]
    property tcp_socket : Kubernetes::Api::V1::TCPSocketAction | Nil

    def initialize(*, @exec : Kubernetes::Api::V1::ExecAction | Nil = nil, @http_get : Kubernetes::Api::V1::HTTPGetAction | Nil = nil, @tcp_socket : Kubernetes::Api::V1::TCPSocketAction | Nil = nil)
    end
  end
end
