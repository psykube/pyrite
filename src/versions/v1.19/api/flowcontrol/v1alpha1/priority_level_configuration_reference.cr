# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PriorityLevelConfigurationReference contains information that points to the "request-priority" being used.
  class Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationReference
    # `name` is the name of the priority level configuration being referenced Required.
    property name : String

    ::YAML.mapping({
      name: {type: String, nilable: false, key: "name", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      name: {type: String, nilable: false, key: "name", getter: false, setter: false},
    }, true)

    def initialize(*, @name : String)
    end
  end
end
