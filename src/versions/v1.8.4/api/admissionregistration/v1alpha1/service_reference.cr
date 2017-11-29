# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ServiceReference holds a reference to Service.legacy.k8s.io
  class Api::Admissionregistration::V1alpha1::ServiceReference
    # Name is the name of the service Required
    property name : String

    # Namespace is the namespace of the service Required
    property namespace : String

    ::YAML.mapping({
      name:      {type: String, nilable: false, key: "name", getter: false, setter: false},
      namespace: {type: String, nilable: false, key: "namespace", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      name:      {type: String, nilable: false, key: "name", getter: false, setter: false},
      namespace: {type: String, nilable: false, key: "namespace", getter: false, setter: false},
    }, true)

    def initialize(*, @name : String | Nil = nil, @namespace : String | Nil = nil)
    end
  end
end
