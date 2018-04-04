# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ServiceReference holds a reference to Service.legacy.k8s.io
  class Api::Admissionregistration::V1beta1::ServiceReference
    # `name` is the name of the service. Required
    property name : String

    # `namespace` is the namespace of the service. Required
    property namespace : String

    # `path` is an optional URL path which will be sent in any request to this service.
    property path : String | Nil

    ::YAML.mapping({
      name:      {type: String, nilable: false, key: "name", getter: false, setter: false},
      namespace: {type: String, nilable: false, key: "namespace", getter: false, setter: false},
      path:      {type: String, nilable: true, key: "path", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      name:      {type: String, nilable: false, key: "name", getter: false, setter: false},
      namespace: {type: String, nilable: false, key: "namespace", getter: false, setter: false},
      path:      {type: String, nilable: true, key: "path", getter: false, setter: false},
    }, true)

    def initialize(*, @name : String | Nil = nil, @namespace : String | Nil = nil, @path : String | Nil = nil)
    end
  end
end
