# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # EventSource contains information for an event.
  class Api::Core::V1::EventSource
    # Component from which the event is generated.
    property component : String | Nil

    # Node name on which the event is generated.
    property host : String | Nil

    YAML.mapping({
      component: {type: String, nilable: true, key: "component", getter: false, setter: false},
      host:      {type: String, nilable: true, key: "host", getter: false, setter: false},
    }, true)

    JSON.mapping({
      component: {type: String, nilable: true, key: "component", getter: false, setter: false},
      host:      {type: String, nilable: true, key: "host", getter: false, setter: false},
    }, true)

    def initialize(*, @component : String | Nil = nil, @host : String | Nil = nil)
    end
  end
end
