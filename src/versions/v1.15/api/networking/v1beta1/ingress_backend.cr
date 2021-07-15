# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # IngressBackend describes all endpoints for a given service and port.
  class Api::Networking::V1beta1::IngressBackend < Kubernetes::Spec
    # Specifies the name of the referenced service.
    @[::JSON::Field(key: "serviceName")]
    @[::YAML::Field(key: "serviceName")]
    property service_name : String

    # Specifies the port of the referenced service.
    @[::JSON::Field(key: "servicePort")]
    @[::YAML::Field(key: "servicePort")]
    property service_port : Int32 | String

    def initialize(*, @service_name : String, @service_port : Int32 | String)
    end
  end
end
