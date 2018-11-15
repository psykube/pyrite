# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Sysctl defines a kernel parameter to be set
  class Api::Core::V1::Sysctl
    # Name of a property to set
    property name : String

    # Value of a property to set
    property value : String

    ::YAML.mapping({
      name:  {type: String, nilable: false, key: "name", getter: false, setter: false},
      value: {type: String, nilable: false, key: "value", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      name:  {type: String, nilable: false, key: "name", getter: false, setter: false},
      value: {type: String, nilable: false, key: "value", getter: false, setter: false},
    }, true)

    def initialize(*, @name : String, @value : String)
    end
  end
end
