# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # UserSubject holds detailed information for user-kind subject.
  class Api::Flowcontrol::V1beta1::UserSubject
    include ::JSON::Serializable
    include ::YAML::Serializable

    # `name` is the username that matches, or "*" to match all usernames. Required.
    @[::JSON::Field(key: "name")]
    @[::YAML::Field(key: "name")]
    property name : String

    def initialize(*, @name : String)
    end
  end
end
