# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_2
  # TCPSocketAction describes an action based on opening a socket
  class Definitions::Kubernetes::Api::V1::TCPSocketAction
    # Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
    property port : Apimachinery::Util::Intstr::IntOrString

    YAML.mapping({port: {type: Apimachinery::Util::Intstr::IntOrString, nilable: false, key: port, getter: false, setter: false}}, true)

    JSON.mapping({port: {type: Apimachinery::Util::Intstr::IntOrString, nilable: false, key: port, getter: false, setter: false}}, true)

    def initialize(@port : Apimachinery::Util::Intstr::IntOrString = nil)
    end
  end
end
