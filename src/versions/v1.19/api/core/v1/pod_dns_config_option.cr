# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PodDNSConfigOption defines DNS resolver options of a pod.
  class Api::Core::V1::PodDNSConfigOption
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Required.
    @[JSON::Field(key: "name")]
    @[YAML::Field(key: "name")]
    property name : String | Nil

    @[JSON::Field(key: "value")]
    @[YAML::Field(key: "value")]
    property value : String | Nil

    def initialize(*, @name : String | Nil = nil, @value : String | Nil = nil)
    end
  end
end
