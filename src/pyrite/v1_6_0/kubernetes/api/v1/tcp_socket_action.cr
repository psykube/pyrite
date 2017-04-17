# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# TCPSocketAction describes an action based on opening a socket
class Pyrite::V1_6_0::Kubernetes::Api::V1::TCPSocketAction
  # Number or name of the port to access on the container.Number must be in the range 1 to 65535.Name must be an IANA_SVC_NAME.
  property port : ::Pyrite::V1_6_0::Apimachinery::Util::Intstr::IntOrString

  YAML.mapping({port: {type: ::Pyrite::V1_6_0::Apimachinery::Util::Intstr::IntOrString, nilable: false, key: port, getter: false, setter: false}}, true)

  JSON.mapping({port: {type: ::Pyrite::V1_6_0::Apimachinery::Util::Intstr::IntOrString, nilable: false, key: port, getter: false, setter: false}}, true)

  def initialize(@port)
  end
end
