# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ServiceAccountSubject holds detailed information for service-account-kind subject.
  class Api::Flowcontrol::V1alpha1::ServiceAccountSubject
    include ::JSON::Serializable
    include ::YAML::Serializable

    # `name` is the name of matching ServiceAccount objects, or "*" to match regardless of name. Required.
    @[::JSON::Field(key: "name")]
    @[::YAML::Field(key: "name")]
    property name : String

    # `namespace` is the namespace of matching ServiceAccount objects. Required.
    @[::JSON::Field(key: "namespace")]
    @[::YAML::Field(key: "namespace")]
    property namespace : String

    def initialize(*, @name : String, @namespace : String)
    end
  end
end
