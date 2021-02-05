# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # AdmissionHookClientConfig contains the information to make a TLS connection with the webhook
  class Api::Admissionregistration::V1alpha1::AdmissionHookClientConfig
    include ::JSON::Serializable
    include ::YAML::Serializable

    # CABundle is a PEM encoded CA bundle which will be used to validate webhook's server certificate. Required
    @[::JSON::Field(key: "caBundle")]
    @[::YAML::Field(key: "caBundle")]
    property ca_bundle : String

    # Service is a reference to the service for this webhook. If there is only one port open for the service, that port will be used. If there are multiple ports open, port 443 will be used if it is open, otherwise it is an error. Required
    @[::JSON::Field(key: "service")]
    @[::YAML::Field(key: "service")]
    property service : Api::Admissionregistration::V1alpha1::ServiceReference

    def initialize(*, @ca_bundle : String, @service : Api::Admissionregistration::V1alpha1::ServiceReference)
    end
  end
end
