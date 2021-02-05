# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ServiceBackendPort is the service port being referenced.
  class Api::Networking::V1::ServiceBackendPort
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Name is the name of the port on the Service. This is a mutually exclusive setting with "Number".
    @[::JSON::Field(key: "name")]
    @[::YAML::Field(key: "name")]
    property name : String | Nil

    # Number is the numerical port number (e.g. 80) on the Service. This is a mutually exclusive setting with "Name".
    @[::JSON::Field(key: "number")]
    @[::YAML::Field(key: "number")]
    property number : Int32 | Nil

    def initialize(*, @name : String | Nil = nil, @number : Int32 | Nil = nil)
    end
  end
end
