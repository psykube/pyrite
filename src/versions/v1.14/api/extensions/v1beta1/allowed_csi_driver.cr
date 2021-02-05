# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # AllowedCSIDriver represents a single inline CSI Driver that is allowed to be used.
  class Api::Extensions::V1beta1::AllowedCSIDriver
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Name is the registered name of the CSI driver
    @[JSON::Field(key: "name")]
    @[YAML::Field(key: "name")]
    property name : String

    def initialize(*, @name : String)
    end
  end
end
