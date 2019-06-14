# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # IngressBackend describes all endpoints for a given service and port.
  class Api::Networking::V1beta1::IngressBackend
    # Specifies the name of the referenced service.
    property service_name : String

    # Specifies the port of the referenced service.
    property service_port : Int32 | String

    ::YAML.mapping({
      service_name: {type: String, nilable: false, key: "serviceName", getter: false, setter: false},
      service_port: {type: Int32 | String, nilable: false, key: "servicePort", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      service_name: {type: String, nilable: false, key: "serviceName", getter: false, setter: false},
      service_port: {type: Int32 | String, nilable: false, key: "servicePort", getter: false, setter: false},
    }, true)

    def initialize(*, @service_name : String, @service_port : Int32 | String)
    end
  end
end
