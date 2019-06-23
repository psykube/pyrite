# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ServiceReference holds a reference to Service.legacy.k8s.io
  class KubeAggregator::Apis::Apiregistration::V1::ServiceReference
    # Name is the name of the service
    property name : String | Nil

    # Namespace is the namespace of the service
    property namespace : String | Nil

    ::YAML.mapping({
      name:      {type: String, nilable: true, key: "name", getter: false, setter: false},
      namespace: {type: String, nilable: true, key: "namespace", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      name:      {type: String, nilable: true, key: "name", getter: false, setter: false},
      namespace: {type: String, nilable: true, key: "namespace", getter: false, setter: false},
    }, true)

    def initialize(*, @name : String | Nil = nil, @namespace : String | Nil = nil)
    end
  end
end
