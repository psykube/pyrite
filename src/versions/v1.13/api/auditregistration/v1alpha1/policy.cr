# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Policy defines the configuration of how audit events are logged
  class Api::Auditregistration::V1alpha1::Policy
    # The Level that all requests are recorded at. available options: None, Metadata, Request, RequestResponse required
    property level : String

    # Stages is a list of stages for which events are created.
    property stages : Array(String) | Nil

    ::YAML.mapping({
      level:  {type: String, nilable: false, key: "level", getter: false, setter: false},
      stages: {type: Array(String), nilable: true, key: "stages", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      level:  {type: String, nilable: false, key: "level", getter: false, setter: false},
      stages: {type: Array(String), nilable: true, key: "stages", getter: false, setter: false},
    }, true)

    def initialize(*, @level : String, @stages : Array | Nil = nil)
    end
  end
end
