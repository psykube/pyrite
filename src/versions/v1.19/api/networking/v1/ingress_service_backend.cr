# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # IngressServiceBackend references a Kubernetes Service as a Backend.
  class Api::Networking::V1::IngressServiceBackend
    # Name is the referenced service. The service must exist in the same namespace as the Ingress object.
    property name : String

    # Port of the referenced service. A port name or port number is required for a IngressServiceBackend.
    property port : Api::Networking::V1::ServiceBackendPort | Nil

    ::YAML.mapping({
      name: {type: String, nilable: false, key: "name", getter: false, setter: false},
      port: {type: Api::Networking::V1::ServiceBackendPort, nilable: true, key: "port", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      name: {type: String, nilable: false, key: "name", getter: false, setter: false},
      port: {type: Api::Networking::V1::ServiceBackendPort, nilable: true, key: "port", getter: false, setter: false},
    }, true)

    def initialize(*, @name : String, @port : Api::Networking::V1::ServiceBackendPort | Nil = nil)
    end
  end
end
