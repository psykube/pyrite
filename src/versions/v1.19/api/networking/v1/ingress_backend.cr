# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # IngressBackend describes all endpoints for a given service and port.
  class Api::Networking::V1::IngressBackend
    # Resource is an ObjectRef to another Kubernetes resource in the namespace of the Ingress object. If resource is specified, a service.Name and service.Port must not be specified. This is a mutually exclusive setting with "Service".
    property resource : Api::Core::V1::TypedLocalObjectReference | Nil

    # Service references a Service as a Backend. This is a mutually exclusive setting with "Resource".
    property service : Api::Networking::V1::IngressServiceBackend | Nil

    ::YAML.mapping({
      resource: {type: Api::Core::V1::TypedLocalObjectReference, nilable: true, key: "resource", getter: false, setter: false},
      service:  {type: Api::Networking::V1::IngressServiceBackend, nilable: true, key: "service", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      resource: {type: Api::Core::V1::TypedLocalObjectReference, nilable: true, key: "resource", getter: false, setter: false},
      service:  {type: Api::Networking::V1::IngressServiceBackend, nilable: true, key: "service", getter: false, setter: false},
    }, true)

    def initialize(*, @resource : Api::Core::V1::TypedLocalObjectReference | Nil = nil, @service : Api::Networking::V1::IngressServiceBackend | Nil = nil)
    end
  end
end
