# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # HTTPHeader describes a custom header to be used in HTTP probes
  class Kubernetes::Api::V1::HTTPHeader
    include ::JSON::Serializable
    include ::YAML::Serializable

    # The header field name
    @[JSON::Field(key: "name")]
    @[YAML::Field(key: "name")]
    property name : String

    # The header field value
    @[JSON::Field(key: "value")]
    @[YAML::Field(key: "value")]
    property value : String

    def initialize(*, @name : String, @value : String)
    end
  end
end
