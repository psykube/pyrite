# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ServiceAccountSubject holds detailed information for service-account-kind subject.
  class Api::Flowcontrol::V1alpha1::ServiceAccountSubject
    # `name` is the name of matching ServiceAccount objects, or "*" to match regardless of name. Required.
    property name : String

    # `namespace` is the namespace of matching ServiceAccount objects. Required.
    property namespace : String

    ::YAML.mapping({
      name:      {type: String, nilable: false, key: "name", getter: false, setter: false},
      namespace: {type: String, nilable: false, key: "namespace", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      name:      {type: String, nilable: false, key: "name", getter: false, setter: false},
      namespace: {type: String, nilable: false, key: "namespace", getter: false, setter: false},
    }, true)

    def initialize(*, @name : String, @namespace : String)
    end
  end
end
