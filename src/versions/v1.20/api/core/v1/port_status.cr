# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  class Api::Core::V1::PortStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Error is to record the problem with the service port The format of the error shall comply with the following rules: - built-in error values shall be specified in this file and those shall use
    #   CamelCase names
    # - cloud provider specific error values must have names that comply with the
    #   format [foo.example.com/CamelCase.](foo.example.com/CamelCase.)
    @[::JSON::Field(key: "error")]
    @[::YAML::Field(key: "error")]
    property error : String | Nil

    # Port is the port number of the service port of which status is recorded here
    @[::JSON::Field(key: "port")]
    @[::YAML::Field(key: "port")]
    property port : Int32

    # Protocol is the protocol of the service port of which status is recorded here The supported values are: "TCP", "UDP", "SCTP"
    @[::JSON::Field(key: "protocol")]
    @[::YAML::Field(key: "protocol")]
    property protocol : String

    def initialize(*, @error : String | Nil = nil, @port : Int32, @protocol : String)
    end
  end
end
