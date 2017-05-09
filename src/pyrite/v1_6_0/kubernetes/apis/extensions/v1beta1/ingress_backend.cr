# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_0
  # IngressBackend describes all endpoints for a given service and port.
  class Definitions::Kubernetes::Apis::Extensions::V1beta1::IngressBackend
    # Specifies the name of the referenced service.
    property service_name : String

    # Specifies the port of the referenced service.
    property service_port : Apimachinery::Util::Intstr::IntOrString

    YAML.mapping({service_name: {type: String, nilable: false, key: serviceName, getter: false, setter: false},
                  service_port: {type: Apimachinery::Util::Intstr::IntOrString, nilable: false, key: servicePort, getter: false, setter: false}}, true)

    JSON.mapping({service_name: {type: String, nilable: false, key: serviceName, getter: false, setter: false},
                  service_port: {type: Apimachinery::Util::Intstr::IntOrString, nilable: false, key: servicePort, getter: false, setter: false}}, true)

    def initialize(@service_name : String? = nil, @service_port : Apimachinery::Util::Intstr::IntOrString = nil)
    end
  end
end
