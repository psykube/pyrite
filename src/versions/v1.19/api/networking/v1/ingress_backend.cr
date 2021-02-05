# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # IngressBackend describes all endpoints for a given service and port.
  class Api::Networking::V1::IngressBackend
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Resource is an ObjectRef to another Kubernetes resource in the namespace of the Ingress object. If resource is specified, a service.Name and service.Port must not be specified. This is a mutually exclusive setting with "Service".
    @[::JSON::Field(key: "resource")]
    @[::YAML::Field(key: "resource")]
    property resource : Api::Core::V1::TypedLocalObjectReference | Nil

    # Service references a Service as a Backend. This is a mutually exclusive setting with "Resource".
    @[::JSON::Field(key: "service")]
    @[::YAML::Field(key: "service")]
    property service : Api::Networking::V1::IngressServiceBackend | Nil

    def initialize(*, @resource : Api::Core::V1::TypedLocalObjectReference | Nil = nil, @service : Api::Networking::V1::IngressServiceBackend | Nil = nil)
    end
  end
end
