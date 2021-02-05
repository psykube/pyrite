# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Policy defines the configuration of how audit events are logged
  class Api::Auditregistration::V1alpha1::Policy
    include ::JSON::Serializable
    include ::YAML::Serializable

    # The Level that all requests are recorded at. available options: None, Metadata, Request, RequestResponse required
    @[::JSON::Field(key: "level")]
    @[::YAML::Field(key: "level")]
    property level : String

    # Stages is a list of stages for which events are created.
    @[::JSON::Field(key: "stages")]
    @[::YAML::Field(key: "stages")]
    property stages : Array(String) | Nil

    def initialize(*, @level : String, @stages : Array | Nil = nil)
    end
  end
end
