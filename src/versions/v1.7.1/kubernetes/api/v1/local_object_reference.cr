# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # LocalObjectReference contains enough information to let you locate the referenced object inside the same namespace.
  class Kubernetes::Api::V1::LocalObjectReference
    # Name of the referent. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names)
    property name : String | Nil

    ::YAML.mapping({
      name: {type: String, nilable: true, key: "name", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      name: {type: String, nilable: true, key: "name", getter: false, setter: false},
    }, true)

    def initialize(*, @name : String | Nil = nil)
    end
  end
end
