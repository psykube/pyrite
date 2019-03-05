# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PodDNSConfigOption defines DNS resolver options of a pod.
  class Api::Core::V1::PodDNSConfigOption
    # Required.
    property name : String | Nil

    property value : String | Nil

    ::YAML.mapping({
      name:  {type: String, nilable: true, key: "name", getter: false, setter: false},
      value: {type: String, nilable: true, key: "value", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      name:  {type: String, nilable: true, key: "name", getter: false, setter: false},
      value: {type: String, nilable: true, key: "value", getter: false, setter: false},
    }, true)

    def initialize(*, @name : String | Nil = nil, @value : String | Nil = nil)
    end
  end
end
