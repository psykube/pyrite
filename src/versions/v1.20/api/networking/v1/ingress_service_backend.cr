# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # IngressServiceBackend references a Kubernetes Service as a Backend.
  class Api::Networking::V1::IngressServiceBackend
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Name is the referenced service. The service must exist in the same namespace as the Ingress object.
    @[JSON::Field(key: "name")]
    @[YAML::Field(key: "name")]
    property name : String

    # Port of the referenced service. A port name or port number is required for a IngressServiceBackend.
    @[JSON::Field(key: "port")]
    @[YAML::Field(key: "port")]
    property port : Api::Networking::V1::ServiceBackendPort | Nil

    def initialize(*, @name : String, @port : Api::Networking::V1::ServiceBackendPort | Nil = nil)
    end
  end
end
