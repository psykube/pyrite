# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ServiceReference holds a reference to Service.legacy.k8s.io
  class Api::Admissionregistration::V1alpha1::ServiceReference < Kubernetes::Spec
    # Name is the name of the service Required
    @[::JSON::Field(key: "name")]
    @[::YAML::Field(key: "name")]
    property name : String

    # Namespace is the namespace of the service Required
    @[::JSON::Field(key: "namespace")]
    @[::YAML::Field(key: "namespace")]
    property namespace : String

    def initialize(*, @name : String, @namespace : String)
    end
  end
end
