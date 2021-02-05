# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Sysctl defines a kernel parameter to be set
  class Api::Core::V1::Sysctl
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Name of a property to set
    @[::JSON::Field(key: "name")]
    @[::YAML::Field(key: "name")]
    property name : String

    # Value of a property to set
    @[::JSON::Field(key: "value")]
    @[::YAML::Field(key: "value")]
    property value : String

    def initialize(*, @name : String, @value : String)
    end
  end
end
