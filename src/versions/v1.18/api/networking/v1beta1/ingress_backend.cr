# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # IngressBackend describes all endpoints for a given service and port.
  class Api::Networking::V1beta1::IngressBackend
    # Resource is an ObjectRef to another Kubernetes resource in the namespace of the Ingress object. If resource is specified, serviceName and servicePort must not be specified.
    property resource : Api::Core::V1::TypedLocalObjectReference | Nil

    # Specifies the name of the referenced service.
    property service_name : String | Nil

    # Specifies the port of the referenced service.
    property service_port : Int32 | String | Nil

    ::YAML.mapping({
      resource:     {type: Api::Core::V1::TypedLocalObjectReference, nilable: true, key: "resource", getter: false, setter: false},
      service_name: {type: String, nilable: true, key: "serviceName", getter: false, setter: false},
      service_port: {type: Int32 | String, nilable: true, key: "servicePort", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      resource:     {type: Api::Core::V1::TypedLocalObjectReference, nilable: true, key: "resource", getter: false, setter: false},
      service_name: {type: String, nilable: true, key: "serviceName", getter: false, setter: false},
      service_port: {type: Int32 | String, nilable: true, key: "servicePort", getter: false, setter: false},
    }, true)

    def initialize(*, @resource : Api::Core::V1::TypedLocalObjectReference | Nil = nil, @service_name : String | Nil = nil, @service_port : Int32 | String | Nil = nil)
    end
  end
end
