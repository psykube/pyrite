# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ServiceReference holds a reference to Service.legacy.k8s.io
  class Kubernetes::Apis::Admissionregistration::V1alpha1::ServiceReference
    # Name is the name of the service Required
    property name : String

    # Namespace is the namespace of the service Required
    property namespace : String

    YAML.mapping({
      name:      {type: String, nilable: false, key: "name"},
      namespace: {type: String, nilable: false, key: "namespace"},
    }, true)

    JSON.mapping({
      name:      {type: String, nilable: false, key: "name"},
      namespace: {type: String, nilable: false, key: "namespace"},
    }, true)

    def initialize(*, @name : String | Nil = nil, @namespace : String | Nil = nil)
    end
  end
end
