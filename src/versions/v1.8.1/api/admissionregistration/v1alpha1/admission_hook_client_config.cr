# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # AdmissionHookClientConfig contains the information to make a TLS connection with the webhook
  class Api::Admissionregistration::V1alpha1::AdmissionHookClientConfig
    # CABundle is a PEM encoded CA bundle which will be used to validate webhook's server certificate. Required
    property ca_bundle : String

    # Service is a reference to the service for this webhook. If there is only one port open for the service, that port will be used. If there are multiple ports open, port 443 will be used if it is open, otherwise it is an error. Required
    property service : Api::Admissionregistration::V1alpha1::ServiceReference

    YAML.mapping({
      ca_bundle: {type: String, nilable: false, key: "caBundle", getter: false, setter: false},
      service:   {type: Api::Admissionregistration::V1alpha1::ServiceReference, nilable: false, key: "service", getter: false, setter: false},
    }, true)

    JSON.mapping({
      ca_bundle: {type: String, nilable: false, key: "caBundle", getter: false, setter: false},
      service:   {type: Api::Admissionregistration::V1alpha1::ServiceReference, nilable: false, key: "service", getter: false, setter: false},
    }, true)

    def initialize(*, @ca_bundle : String | Nil = nil, @service : Api::Admissionregistration::V1alpha1::ServiceReference | Nil = nil)
    end
  end
end
