# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # IngressBackend describes all endpoints for a given service and port.
  class Api::Extensions::V1beta1::IngressBackend
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Resource is an ObjectRef to another Kubernetes resource in the namespace of the Ingress object. If resource is specified, serviceName and servicePort must not be specified.
    @[::JSON::Field(key: "resource")]
    @[::YAML::Field(key: "resource")]
    property resource : Api::Core::V1::TypedLocalObjectReference | Nil

    # Specifies the name of the referenced service.
    @[::JSON::Field(key: "serviceName")]
    @[::YAML::Field(key: "serviceName")]
    property service_name : String | Nil

    # Specifies the port of the referenced service.
    @[::JSON::Field(key: "servicePort")]
    @[::YAML::Field(key: "servicePort")]
    property service_port : Int32 | String | Nil

    def initialize(*, @resource : Api::Core::V1::TypedLocalObjectReference | Nil = nil, @service_name : String | Nil = nil, @service_port : Int32 | String | Nil = nil)
    end
  end
end
